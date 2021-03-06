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

// Plugin
class plgCCK_FieldTextarea extends JCckPluginField
{
	protected static $type		=	'textarea';
	protected static $path;
	
	// -------- -------- -------- -------- -------- -------- -------- -------- // Construct
	
	// onCCK_FieldConstruct
	public function onCCK_FieldConstruct( $type, &$data = array() )
	{
		if ( self::$type != $type ) {
			return;
		}
		parent::g_onCCK_FieldConstruct( $data );
		
		$data['defaultvalue']	=	JRequest::getVar( 'defaultvalue', '', '', 'string', JREQUEST_ALLOWRAW );
	}
	
	// -------- -------- -------- -------- -------- -------- -------- -------- // Prepare
	
	// onCCK_FieldPrepareContent
	public function onCCK_FieldPrepareContent( &$field, $value = '', &$config = array() )
	{
		if ( self::$type != $field->type ) {
			return;
		}
		parent::g_onCCK_FieldPrepareContent( $field, $config );
		$value			=	( $field->bool3 ) ? self::_bn2clear( $value ) : $value;
		if ( $value ) {
			$value		=	( $field->bool2 ) ? ( ( $field->bool2 == 2 ) ? self::_bn2br_in_p( $value ) : self::_bn2p( $value ) ) : self::_bn2br( $value );
		}
		$field->value	=	$value;
	}
	
	// onCCK_FieldPrepareForm
	public function onCCK_FieldPrepareForm( &$field, $value = '', &$config = array(), $inherit = array(), $return = false )
	{
		if ( self::$type != $field->type ) {
			return;
		}
		self::$path	=	parent::g_getPath( self::$type.'/' );
		parent::g_onCCK_FieldPrepareForm( $field, $config );
		
		// Init
		if ( count( $inherit ) ) {
			$id		=	( isset( $inherit['id'] ) && $inherit['id'] != '' ) ? $inherit['id'] : $field->name;
			$name	=	( isset( $inherit['name'] ) && $inherit['name'] != '' ) ? $inherit['name'] : $field->name;
		} else {
			$id		=	$field->name;
			$name	=	$field->name;
		}
		$value		=	( $value != '' ) ? ( ( $field->bool2 ) ? self::_p2nl( $value ) : self::_br2nl( $value ) ) : $field->defaultvalue;
		$value		=	( $value != ' ' ) ? $value : '';
		
		// Validate
		$validate	=	'';
		if ( $config['doValidation'] > 1 ) {
			plgCCK_Field_ValidationRequired::onCCK_Field_ValidationPrepareForm( $field, $id, $config );
			parent::g_onCCK_FieldPrepareForm_Validation( $field, $id, $config, array( 'minSize'=>true, 'maxSize'=>true ) );
			$validate	=	( count( $field->validate ) ) ? ' validate['.implode( ',', $field->validate ).']' : '';
		}
		
		// Prepare
		$class	=	'inputbox textarea'.$validate . ( $field->css ? ' '.$field->css : '' );
		$cols	=	( $field->cols ) ? $field->cols : 25;
		$rows	=	( $field->rows ) ? $field->rows : 3;
		$attr	=	'class="'.$class.'"' . ( $field->attributes ? ' '.$field->attributes : '' );
		$form	= 	'<textarea id="'.$id.'" name="'.$name.'" cols="'.$cols.'" rows="'.$rows.'" '.$attr.'>'.$value.'</textarea>';
		
		// Set
		if ( ! $field->variation ) {
			$field->form	=	$form;
		} else {
			$hidden	=	'<textarea class="inputbox" style="display: none;" id="'.$id.'" name="'.$name.'" />'.$value.'</textarea>';
			parent::g_getDisplayVariation( $field, $field->variation, $value, self::_bn2br( self::_bn2clear( $value ) ), $form, $id, $name, '<textarea', $hidden, '', $config );
		}
		$field->value	=	$value;
		
		// Return
		if ( $return === true ) {
			return $field;
		}
	}
	
	// onCCK_FieldPrepareSearch
	public function onCCK_FieldPrepareSearch( &$field, $value = '', &$config = array(), $inherit = array(), $return = false )
	{
		if ( self::$type != $field->type ) {
			return;
		}
		
		// Prepare
		self::onCCK_FieldPrepareForm( $field, $value, $config, $inherit, $return );
		
		// Return
		if ( $return === true ) {
			return $field;
		}
	}
	
	// onCCK_FieldPrepareStore
	public function onCCK_FieldPrepareStore( &$field, $value = '', &$config = array(), $inherit = array(), $return = false )
	{
		if ( self::$type != $field->type ) {
			return;
		}
		
		// Init
		if ( count( $inherit ) ) {
			$name	=	( isset( $inherit['name'] ) && $inherit['name'] != '' ) ? $inherit['name'] : $field->name;
		} else {
			$name	=	$field->name;
			$value	=	JRequest::getVar( $name, '', 'post', 'string', JREQUEST_ALLOWRAW );
		}
		
		// Validate
		parent::g_onCCK_FieldPrepareStore_Validation( $field, $name, $value, $config );
		
		// Set or Return
		if ( $return === true ) {
			return $value;
		}
		$field->value	=	$value;
		parent::g_onCCK_FieldPrepareStore( $field, $name, $value, $config );
	}
	
	// -------- -------- -------- -------- -------- -------- -------- -------- // Render
	
	// onCCK_FieldRenderContent
	public static function onCCK_FieldRenderContent( $field, &$config = array() )
	{
		return parent::g_onCCK_FieldRenderContent( $field );
	}
	
	// onCCK_FieldRenderForm
	public static function onCCK_FieldRenderForm( $field, &$config = array() )
	{
		return parent::g_onCCK_FieldRenderForm( $field );
	}
	
	// -------- -------- -------- -------- -------- -------- -------- -------- // Stuff & Script
	
	// _br2nl
	protected static function _br2nl( $text )
	{
		return  preg_replace( '/\<br(\s*)?\/?\>/i', "\n", $text );
	}

	// _bn2br
	protected static function _bn2br( $text )
	{
		return  preg_replace( '/\\n/i', "<br />", $text );
	}

	// _p2nl
	protected static function _p2nl( $text )
	{
		return  preg_replace( '/\<p\>\<\/p\>/i', "\n", $text );
	}

	// _bn2p
	protected static function _bn2p( $text )
	{
		$text	=	'<p>'.$text.'</p>';
		return  preg_replace( '/\\n/i', "</p><p>", $text );
	}

	// _bn2p_br
	protected static function _bn2br_in_p( $text )
	{
		$text	=	'<p>'.$text.'</p>';
		return  preg_replace( '/\\n/i', "<br />", $text );
	}

	// _bn2clear
	protected static function _bn2clear( $text )
	{
		return	preg_replace( '/\\n\\r/i', '', $text );
	}
}
?>