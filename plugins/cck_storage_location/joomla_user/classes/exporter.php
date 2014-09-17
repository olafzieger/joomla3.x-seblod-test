<?php
/**
* @version 			SEBLOD 3.x Core
* @package			SEBLOD (App Builder & CCK) // SEBLOD nano (Form Builder)
* @url				http://www.seblod.com
* @editor			Octopoos - www.octopoos.com
* @copyright		Copyright (C) 2013 SEBLOD. All Rights Reserved.
* @license 			GNU General Public License version 2 or later; see _LICENSE.php
**/

defined( '_JEXEC' ) or die;

require_once JPATH_SITE.'/plugins/cck_storage_location/joomla_user/joomla_user.php';

// Class
class plgCCK_Storage_LocationJoomla_User_Exporter extends plgCCK_Storage_LocationJoomla_User
{
	protected static $columns_excluded	=	array( 'isRoot', 'password_clear', 'usertype', 'guest', 'aid' );
	protected static $columns_ignored	=	array( 'isRoot', 'id', 'password', 'password_clear', 'usertype', 'guest', 'aid' );

	// getColumnsToExport
	public static function getColumnsToExport()
	{
		$table		=	self::_getTable();
		$columns	=	$table->getProperties();
		
		foreach ( self::$columns_excluded as $column ) {
			if ( array_key_exists( $column, $columns ) ) {
				unset( $columns[$column] );
			}
		}
		
		return array_keys( $columns );
	}

	// onCCK_Storage_LocationExport
	public static function onCCK_Storage_LocationExport( $items, &$config = array() )
	{
		// Init
		$excluded2	=	array( 'cck'=>'' );
		$tables		=	array();
		$user		=	JFactory::getUser();
		
		// Prepare
		$table		=	self::_getTable();
		$fields		=	$table->getProperties();
		if ( isset( $config['fields'] ) && $config['fields'] === false ) {
			$fields	=	array();
		} elseif ( isset( $config['fields'] ) && count( $config['fields'] ) ) {
			$fields	=	$config['fields'];
		} else {
			if ( count( self::$columns_ignored ) ) {
				foreach ( self::$columns_ignored as $exclude ) {
					unset( $fields[$exclude] );
				}
			}
		}
		
		if ( count( $config['fields2'] ) ) {
			foreach ( $config['fields2'] as $k=>$field ) {
				if ( !isset( $storages[$field->storage_table] ) ) {
					$tables[$field->storage_table]	=	JCckDatabase::loadObjectList( 'SELECT * FROM '.$field->storage_table, 'id' );
				}
				if ( $config['component'] == 'com_cck_exporter' ) {
					$key		=	$field->name;
				} else {
					$key		=	( $field->label2 ) ? $field->label2 : ( ( $field->label ) ? $field->label : $field->name );
				}
				$fields[$key]	=	'';
			}
		}
		$fields	=	array_keys( $fields );
		if ( $config['ftp'] == '1' ) {
			$config['buffer']	.=	str_putcsv( $fields, $config['separator'] )."\n";
		} else {
			fputcsv( $config['handle'], $fields, $config['separator'] );
		}
		
		// Set
		if ( count( $items ) ) {
			foreach ( $items as $item ) {
				// Check Permissions?
				if ( $config['authorise'] == 0  ) {
					continue;
				} elseif ( $config['authorise'] == 2 ) {
					if ( !isset( $config['types'][$item->cck] ) ) {
						$config['types'][$item->cck]	=	JCckDatabase::loadResult( 'SELECT id FROM #__cck_core_types WHERE name = "'.$item->cck.'"' );
					}
					if ( !$user->authorise( 'core.export', 'com_cck.form.'.$config['types'][$item->cck] ) ) {
						continue;
					}
				}

				// Core
				$table	=	self::_getTable( $item->pk );
				if ( isset( $config['fields'] ) && $config['fields'] === false ) {
					$fields	=	array();
				} elseif ( isset( $config['fields'] ) && count( $config['fields'] ) ) {
					$fields	=	array();
					$vars 	=	get_object_vars( $table );
					foreach ( $vars as $key=>$val ) {
						if ( isset( $config['fields'][$key] ) ) {
							$fields[$key]	=	$val;
						}
					}
				} else {
					$fields	=	$table->getProperties();
					if ( count( self::$columns_ignored ) ) {
						foreach ( self::$columns_ignored as $exclude ) {
							unset( $fields[$exclude] );
						}
					}
				}

				// Core > Custom
				if ( self::$custom && isset( $fields[self::$custom] ) ) {
					preg_match_all( CCK_Content::getRegex(), $fields[self::$custom], $values );
					$tables[self::$table][$item->pk]->{self::$custom}	=	array();
					$fields[self::$custom]								=	'';
					if ( count( $values[1] ) ) {
						foreach ( $values[1] as $k=>$v ) {
							if ( $v == self::$custom ) {
								$fields[self::$custom]	=	$values[2][$k];
							} elseif ( !isset( $excluded2[$v] ) ) {
								$tables[self::$table][$item->pk]->{self::$custom}[$v]	=	$values[2][$k];
							}	
						}
					}
				}

				// More
				if ( count( $config['fields2'] ) ) {
					foreach ( $config['fields2'] as $name=>$field ) {
						if ( $field->storage == 'standard' ) {
							if ( $config['component'] == 'com_cck_exporter' ) {
								$key		=	$field->name;
							} else {
								$key		=	( $field->label2 ) ? $field->label2 : ( ( $field->label ) ? $field->label : $field->name );
							}
							$fields[$key]	=	@$tables[$field->storage_table][$item->pk]->{$field->storage_field};
						} else {
							$name			=	$field->storage_field2 ? $field->storage_field2 : $name;
							if ( $config['component'] == 'com_cck_exporter' ) {
								$key		=	$field->name;
							} else {
								$key		=	( $field->label2 ) ? $field->label2 : ( ( $field->label ) ? $field->label : $field->name );
							}
							if ( !isset( $tables[$field->storage_table][$item->pk]->{$field->storage_field} ) ) {
								$tables[$field->storage_table][$item->pk]->{$field->storage_field}	=	array();	// TODO
							}
							$fields[$key]	=	( is_array( $tables[$field->storage_table][$item->pk]->{$field->storage_field} ) && isset( $tables[$field->storage_table][$item->pk]->{$field->storage_field}[$name] ) ) ? $tables[$field->storage_table][$item->pk]->{$field->storage_field}[$name] : $tables[$field->storage_table][$item->pk]->{$field->storage_field};
						}
					}
				}
				// --- 
				$fields['groups']	=	implode( ',', $fields['groups'] );
				// ---
				
				// Export
				if ( $config['ftp'] == '1' ) {
					$config['buffer']	.=	str_putcsv( $fields, $config['separator'] )."\n";
				} else {
					fputcsv( $config['handle'], $fields, $config['separator'] );
				}
				$config['count']++;
			}
		}
	}
}
?>