<?php
/**
* @version 			SEBLOD 3.x Core ~ $Id: list_inc.php sebastienheraud $
* @package			SEBLOD (App Builder & CCK) // SEBLOD nano (Form Builder)
* @url				http://www.seblod.com
* @editor			Octopoos - www.octopoos.com
* @copyright		Copyright (C) 2013 SEBLOD. All Rights Reserved.
* @license 			GNU General Public License version 2 or later; see _LICENSE.php
**/

defined( '_JEXEC' ) or die;

JHtml::_( 'behavior.framework' );

$app			=	JFactory::getApplication();
$data			=	'';
$form			=	'';
$id				=	0;	// $app->input->getInt( 'id', 0 ); Not even sure why it was there.. any regression?
$itemId			=	( $preconfig['itemId'] == '' ) ? $app->input->getInt( 'Itemid', 0 ) : $preconfig['itemId'];
$items			=	array();
$lang   		=	JFactory::getLanguage();
$path			=	JPATH_SITE.'/templates';
$total			=	0;
$user 			=	JCck::getUser();
$user->gid		=	25; // Todo:: ACL

// Search
$search			=	CCK_List::getSearch( $preconfig['search'], $id );
if ( ! $search ) {
	$config		=	array( 'action'=>$preconfig['action'],
						   'core'=>true,
						   'formId'=>$preconfig['formId'],
						   'Itemid'=>$itemId,
						   'javascript'=>'',
						   'location'=>'',
						   'submit'=>$preconfig['submit'],
						   'validation'=>array(),
						   'validation_options'=>array()
						);
	$app->enqueueMessage( 'Oops! Search Type not found.. ; (', 'error' ); return;
}
$lang->load( 'pkg_app_cck_'.$search->folder_app, JPATH_SITE, null, false, false );
$options					=	new JRegistry;
$options->loadString( $search->options );
$preconfig['show_form']		=	( $preconfig['show_form'] != '' ) ? (int)$preconfig['show_form'] : (int)$options->get( 'show_form', 1 );
$preconfig['show_list']		=	( isset( $preconfig['show_list'] ) ) ? $preconfig['show_list'] : 1;
$preconfig['auto_redirect']	=	( $preconfig['auto_redirect'] != '' ) ? $preconfig['auto_redirect'] : $options->get( 'auto_redirect', 0 );

// ACL
if ( !in_array( $search->access, $user->getAuthorisedViewLevels() ) ) {
	$config			=	array( 'action'=>$preconfig['action'],
						   'core'=>true,
						   'formId'=>$preconfig['formId'],
						   'Itemid'=>$itemId,
						   'javascript'=>'',
						   'location'=>'',
						   'submit'=>$preconfig['submit'],
						   'validation'=>array(),
						   'validation_options'=>array()
						);
	$no_message		=	$options->get( 'message_no_access' );
	$no_redirect	=	$options->get( 'redirection_url_no_access', 'index.php?option=com_users&view=login' );
	$no_style		=	$options->get( 'message_style_no_access', 'error' );
	$no_action		=	$options->get( 'action_no_access', 'redirection' );
	CCK_List::redirect( $no_action, $no_redirect, $no_message, $no_style, $config ); return;
}

// Fields
$fields						=	CCK_List::getFields( $search->name, $preconfig['client'], '', true, true );
$fields_order				=	CCK_List::getFields( $search->name, 'order', '', true, true );
$count						=	count( $fields );
$doDebug					=	(int)$options->get( 'debug', JCck::getConfig_Param( 'debug', 0 ) );
$doDebug					=	( $doDebug == 1 || ( $doDebug == 2 && $user->authorise( 'core.admin' ) ) ) ? 1 : 0;
$options->set( 'debug', $doDebug );
$excluded_stages			=	explode( ',', $options->get( 'stages_optional', '' ) );
if ( $doDebug ) {
	jimport( 'joomla.error.profiler' );
}
if ( ! $count ) {
	$config		=	array( 'action'=>$preconfig['action'],
						   'core'=>true,
						   'formId'=>$preconfig['formId'],
						   'Itemid'=>$itemId,
						   'javascript'=>'',
						   'location'=>'',
						   'submit'=>$preconfig['submit'],
						   'validation'=>array(),
						   'validation_options'=>array()
						);
	$app->enqueueMessage( 'Oops! Fields not found.. ; (', 'error' ); return;
}

// INIT
$limitend	=	(int)$options->get( 'pagination', JCck::getConfig_Param( 'pagination', 25 ) );
if ( $limitstart != -1 ) {
	if ( $limitend != -1 ) {
		$this->state->set( 'limit', $app->getUserStateFromRequest( $limitend, 'limit', $limitend, 'UINT' ) );
	}
	$limitend	=	(int)$this->state->get( 'limit' );
}

if ( !isset( $lives ) ) {
	$live		=	explode( '||', $live );
	$lives		=	array();
	foreach ( $live as $liv ) {
		if ( $liv != '' ) {
			$l				=	explode( '=', $liv );
			$lives[$l[0]]	=	$l[1];
		}
	}
}
$variation	=	explode( '||', $variation );
$variations	=	array();
foreach ( $variation as $var ) {
	if ( $var != '' ) {
		$v					=	explode( '=', $var );
		if ( $v[1] == 'none' ) { $v[1] = 'hidden'; } // TODO: FIX TO REMOVE AFTER GA
		$variations[$v[0]]	=	$v[1];
	}
}

$method			=	0;
$searchLength	=	0;
$ordering		=	( @$preconfig['ordering'] != '' ) ? $preconfig['ordering'] : $options->get( 'ordering', '' );
$active			=	array();
$active[0]		=	'cck';
$areas['active']=	$active;
if ( $preconfig['task'] == 'search' || $preconfig['task'] == 'search2' ) {
	$post		=	( $method ) ? JRequest::get( 'post' ) : JRequest::get( 'get' );
}
$config			=	array( 'action'=>$preconfig['action'],
						   'client'=>$preconfig['client'],
						   'core'=>true,
						   'doQuery'=>true,
						   'doSEF'=>$options->get( 'sef', JCck::getConfig_Param( 'sef', '2' ) ),
						   'doTranslation'=>JCck::getConfig_Param( 'language_jtext', 0 ),
						   'doValidation'=>JCck::getConfig_Param( 'validation', '2' ),
						   'formId'=>$preconfig['formId'],
						   'Itemid'=>$itemId,
						   'location'=>'',
						   'pk'=>$id,
						   'submit'=>$preconfig['submit'],
						   'type'=>$search->name,
						   'type_id'=>$search->id,
						   'type_alias'=>( $search->alias ? $search->alias : $search->name ),
						   'validate'=>array(),
						   'validation'=>array(),
						   'validation_options'=>array()
						);
jimport( 'cck.rendering.document.document' );
JPluginHelper::importPlugin( 'cck_field' );
JPluginHelper::importPlugin( 'cck_field_live' );
JPluginHelper::importPlugin( 'cck_field_restriction' );
$dispatcher	=	JDispatcher::getInstance();

// -------- -------- -------- -------- -------- -------- -------- -------- // Show Form

if ( $preconfig['show_form'] ) {
	// Template
	$P				=	'template_'.$preconfig['client'];
	$templateStyle	=	CCK_List::getTemplateStyle( $search->$P, array( 'rendering_css_core'=>$search->stylesheets ) );
	if ( ! $templateStyle ) {
		$app->enqueueMessage( 'Oops! Template not found.. ; (', 'error' ); return;
	}

	$doc			=	CCK_Document::getInstance( 'html' );

	// Positions
	$positions		=	array();
	$positions_more	=	CCK_List::getPositions( $search->id, $preconfig['client'] );
	
	// Template Override
	$tpl['home']	=	$app->getTemplate();
	$path			=	JPATH_SITE.'/templates/'.$templateStyle->name;

	if ( $preconfig['show_form'] > -1 ) {
		$path_root		=	JPATH_SITE.'/templates';
		$tmpl			=	$templateStyle->name;
		$rparams		=	array( 'template'=>$tmpl, 'file'=>'index.php', 'directory'=>$path_root );	
	}
}

// -------- -------- -------- -------- -------- -------- -------- -------- // Prepare Search

// Validation
if ( JCck::getConfig_Param( 'validation', 2 ) > 1 ) {
	$lang->load( 'plg_cck_field_validation_required', JPATH_ADMINISTRATOR, null, false, true );
	require_once JPATH_PLUGINS.'/cck_field_validation/required/required.php';
}
$preconfig['client']	=	'list';
$error					=	'';
$current				=	array( 'stage'=>0, 'stages'=>array(), 'order_by'=>$params->get( 'order_by', '' ) );
$stages					=	array();

// Process
foreach ( $fields as $field ) {
	$name	=	$field->name;
	$value	=	'';
	
	// Variation
	if ( $field->variation_override ) {
		$override	=	json_decode( $field->variation_override, true );
		if ( count( $override ) ) {
			foreach ( $override as $k=>$v ) {
				$field->$k	=	$v;
			}
		}
		$field->variation_override	=	NULL;
	}
	$field->variation	=	( isset( $variations[$name] ) ) ? ( $variations[$name] == 'form' ? '' : $variations[$name] ) : $field->variation;
		
	// Value
	if ( ( !$field->variation || $field->variation == 'form_filter' || strpos( $field->variation, 'custom_' ) !== false ) && isset( $post[$name] ) ) {
		$value	=	$post[$name];
	} else {
		if ( isset( $lives[$name] ) ) {
			$value		=	$lives[$name];
		} else {
			if ( $field->live && $field->variation != 'clear' ) {
				$dispatcher->trigger( 'onCCK_Field_LivePrepareForm', array( &$field, &$value, &$config ) );
			} else {
				$value	=	$field->live_value;
			}
		}
	}
	
	// Prepare
	$dispatcher->trigger( 'onCCK_FieldPrepareSearch', array( &$field, $value, &$config, array() ) );

	// Stage
	if ( $field->stage != 0 ) {
		$stages[$field->stage]	=	0;
	}

	if ( $preconfig['show_form'] ) {
		$position				=	$field->position;
		$positions[$position][]	=	$field->name;
	}
}

// -------- -------- -------- -------- -------- -------- -------- -------- // Do Search
if ( isset( $doc ) ) {
	$doc->fields		=	$fields;
}
$config['limitstart']	=	$limitstart;
$config['limitend']		=	$limitend;
$config['doSelect']		=	$search->content ? false : true;
if ( $search->storage_location ) {
	$config['type_object']	=	$search->storage_location;
}
if ( $preconfig['task'] == 'search' ) {
	$countStages	=	count( $stages );
	if ( $countStages ) {		
		for( $stage =  1; $stage <= $countStages; $stage++ ) {
			if ( ! $error ) {
				// Search
				$current['stage']	=	$stage;
				$items				=	CCK_List::getList( $ordering, $areas, $fields, $fields_order, $config, $current, $options, $user );
				if ( ! $items && $stages[$stage] == 0 && in_array( $stage, $excluded_stages ) === false ) {
					$error			=	1;
					break;
				}
				$current['stages'][$stage]	=	implode( ',', $items );
			}
		}
	}
	if ( ! $error ) {
		$current['stage']	=	0;
		$items				=	CCK_List::getList( $ordering, $areas, $fields, $fields_order, $config, $current, $options, $user );
	}
	$total	=	count( $items );
	if ( isset( $config['total'] ) && $config['total'] > 0 ) {
		$limitstart	=	-1;
		$limitend	=	0;
		$total		=	$config['total'];
	} else {
		$config['total']	=	$total;
	}
	
	// IDs & PKs
	if ( isset( $config['process']['beforeRenderForm'] ) && count( $config['process']['beforeRenderForm'] ) ) {
		$ids	=	'';
		$pks	=	'';
		if ( $config['doQuery'] ) {
			for ( $i = 0; $i < $total; $i++ ) {
				$ids	.=	(int)$items[$i]->pid.',';
				$pks	.=	(int)$items[$i]->pk.',';
			}
			$ids		=	substr( $ids, 0, -1 );
			$pks		=	substr( $pks, 0, -1 );
		}
		$config['ids']	=	$ids;
		$config['pks']	=	$pks;
	}

	// Pagination
	if ( $limitstart != -1 && $limitend > 0 && !( $preconfig['limit2'] > 0 ) ) {
		$items	=	array_splice( $items, $limitstart, $limitend );
	}
	
	// -------- -------- -------- -------- -------- -------- -------- -------- // Do List
	if ( $doDebug ) {
		$profiler	=	JProfiler::getInstance();
	}
	if ( $preconfig['show_list'] ) {
		if ( $total ) {
			// Limit2 + Random
			if( $preconfig['limit2'] > 0 ) {
				$total	=	( $preconfig['limit2'] > $total ) ? $total : $preconfig['limit2'];
				if ( $preconfig['ordering2'] == 'random' || $preconfig['ordering2'] == 'random_shuffle' ) {
					// Random
					$rand_keys	=	array_rand( $items, $total );
					if ( ! is_array( $rand_keys ) ) { 
						$rand_keys	=	array( $rand_keys );
					}	
					$rand_list	=	array();
					foreach ( $rand_keys as $key ) { 
						array_push( $rand_list, $items[$key] );
					}
					$items	=	array();
					$items	=	array_merge( $items, $rand_list );
				} else {
					// Cut
					$items	=	array_splice( $items, 0, $total );
				}
			}
			// Suffle
			if ( $preconfig['ordering2'] == 'shuffle' || $preconfig['ordering2'] == 'random_shuffle' ) {
				shuffle( $items );
			}
			
			// Redirect
			if ( $total == 1 ) {
				if ( $preconfig['auto_redirect'] == 1 ) {
					$sef			=	( $app->getCfg( 'sef' ) ) ? $config['doSEF'] : 0;
					$redirect_url	=	JCck::callFunc_Array( 'plgCCK_Storage_Location'.$items[0]->loc, 'getRoute', array( $items[0], $sef, $config['Itemid'] ) );
					$app->redirect( $redirect_url );
					return;
				} elseif ( $preconfig['auto_redirect'] == 2 ) {
					$uri			=	$_SERVER["HTTP_REFERER"];
					$return			=	base64_encode( $uri );
					$redirect_url	=	JRoute::_( 'index.php?option=com_cck&view=form&layout=edit&type='.$items[0]->cck.'&id='.$items[0]->pk.'&Itemid='.$config['Itemid'].'&return='.$return );
					$app->redirect( $redirect_url );
					return;
				}
			}
			
			// Render
			$doCache2		=	$options->get( 'cache2' );
			if ( $doCache2 ) {
				$group		=	( $doCache2 == '2' ) ? 'com_cck_'.$config['type_alias'].'_list' : 'com_cck';
				$cache		=	JFactory::getCache( $group );
				$cache->setCaching( 1 );
				$data		=	$cache->call( array( 'CCK_List', 'render' ), $items, $search, $path, $preconfig['client'], $preconfig['itemId'], $options );
				$isCached	=	' [Cache=ON]';
			} else {
				if ( $search->content > 0 ) {
					$data	=	CCK_List::render( $items, $search, $path, $preconfig['client'], $preconfig['itemId'], $options, $config );
				}
				$isCached	=	' [Cache=OFF]';
			}
		} else {
			$isCached	=	'';
			$no_message	=	$options->get( 'message', '' );
			$no_action	=	$options->get( 'action', '' );
			$no_style	=	$options->get( 'message_style', 'message' );
			
			if ( ! $no_message ) {
				$no_message	=	JText::_( 'COM_CCK_NO_RESULT' );
			} else {
				if ( JCck::getConfig_Param( 'language_jtext', 0 ) ) {
					$no_message	=	JText::_( 'COM_CCK_' . str_replace( ' ', '_', trim( $no_message ) ) );
				}
			}
			if ( $no_style ) {
				if ( $no_style == '-1' ) {
					$data	=	$no_message;
				} else {
					$app->enqueueMessage( $no_message, $no_style );
				}
			}
			if ( $no_action ) {
				if ( $no_action == 'auto_redirect' ) {
					if ( isset( $fields['cck'] ) && !$fields['cck']->live && $fields['cck']->live_value ) {
						$uri			=	$_SERVER["HTTP_REFERER"];
						$return			=	base64_encode( $uri );
						$redirect_url	=	JRoute::_( 'index.php?option=com_cck&view=form&layout=edit&type='.$fields['cck']->live_value.'&Itemid='.$config['Itemid'].'&return='.$return );
						$app->redirect( $redirect_url );
					}
					return;
				} elseif ( $no_action == 'file' ) {
					$templateStyle	=	CCK_List::getTemplateStyle( $search->template_list, array( 'rendering_css_core'=>$search->stylesheets ) );
					$file1			=	JPATH_SITE.'/templates/'.$templateStyle->name.'/includes/'.$search->name.'/no_result.php';
					$file2			=	JPATH_SITE.'/templates/'.$templateStyle->name.'/includes/no_result.php';
					
					if ( file_exists( $file1 ) ) {
						$file	=	$file1;
					} elseif ( file_exists( $file2 ) ) {
						$file	=	$file2;
					} else {
						$file	=	'';
					}
					if ( $file && is_file( $file ) ) {
						ob_start();
						include $file;
						$data	=	ob_get_clean();
					}
				} else {
					$data		=	CCK_List::render( $items, $search, $path, $preconfig['client'], $preconfig['itemId'], $options, $config );
				}
			}
		}
	}
	if ( $doDebug ) {
		echo $profiler->mark( 'afterRender'.$isCached ).'<br /><br />';
	}
}

if ( $preconfig['show_form'] > 0 ) {
	// BeforeRender
	if ( isset( $config['process']['beforeRenderForm'] ) && count( $config['process']['beforeRenderForm'] ) ) {
		foreach ( $config['process']['beforeRenderForm'] as $process ) {
			if ( $process->type ) {
				JCck::callFunc_Array( 'plg'.$process->group.$process->type, 'on'.$process->group.'beforeRenderForm', array( $process->params, &$fields, &$config['storages'], &$config ) );
			}
		}
	}
	
	$doc->fields	=	&$fields;
	$infos			=	array( 'context'=>'', 'params'=>$templateStyle->params, 'path'=>$path, 'root'=>JURI::root( true ), 'template'=>$templateStyle->name, 'theme'=>$tpl['home'] );
	$doc->finalize( 'form', $search->name, $config['client'], $positions, $positions_more, $infos );
	$form			=	$doc->render( false, $rparams );
}

// Validation
$config['validation']			=	( count( $config['validation'] ) ) ? implode( ',', $config['validation'] ) : '';
$config['validation_options']	=&	$options;
?>