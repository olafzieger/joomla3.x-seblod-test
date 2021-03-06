<?php
/**
* @version 			SEBLOD 3.x Core ~ $Id: edit.php sebastienheraud $
* @package			SEBLOD (App Builder & CCK) // SEBLOD nano (Form Builder)
* @url				http://www.seblod.com
* @editor			Octopoos - www.octopoos.com
* @copyright		Copyright (C) 2013 SEBLOD. All Rights Reserved.
* @license 			GNU General Public License version 2 or later; see _LICENSE.php
**/

defined( '_JEXEC' ) or die;

$config	=	JCckDev::init( array( '42', 'text' ), false, array( 'item'=>$this->item, 'vName'=>$this->vName ) );
Helper_Include::addDependencies( $this->getName(), $this->getLayout() );
?>

<script type="text/javascript">
Joomla.submitbutton = function(task)
{
	Joomla.submitform(task, document.getElementById('adminForm'));
}
</script>

<form action="<?php echo JRoute::_( 'index.php?option='.$this->option.'&view='.$this->getName().'&layout=edit&id='.(int)$this->item->id ); ?>" method="post" id="adminForm" name="adminForm">

<div class="<?php echo $this->css['wrapper']; ?>">
	<div class="seblod first">
        <ul class="spe spe_title">
			<?php echo '<li><label>'.JText::_( 'COM_CCK_TITLE' ).'</label><span class="variation_value"><strong>'.$this->item->title.'</strong></span></li>'; ?>
        </ul>
        <ul class="spe spe_folder">
			<?php echo '<li><label>'.JText::_( 'COM_CCK_CREATED_DATE' ).'</label><span class="variation_value">'.JHtml::_( 'date', $this->item->date_time, JText::_( 'DATE_FORMAT_LC4' ).' H:i' ).'</span></li>'; ?>
        </ul>
        <ul class="spe spe_description">
			<?php echo '<li><label>'.JText::_( 'COM_CCK_REVISION' ).'</label><span class="variation_value"><strong>'.$this->item->e_version.'</strong></span></li>'; ?>
        </ul>
	</div>
    
	<div class="seblod">
        <div class="legend top left"><?php echo JText::_( 'COM_CCK_OPTIONS' ); ?></div>
        <ul class="adminformlist adminformlist-2cols">
            <?php echo JCckDev::renderForm( 'core_note', $this->item->note, $config, array(), array(), 'w100' ); ?>
        </ul>
	</div>
</div>

<div class="clr"></div>
<div>
    <input type="hidden" id="task" name="task" value="" />
    <input type="hidden" name="element_type" value="<?php echo $this->item->e_type; ?>" />
    <input type="hidden" id="myid" name="id" value="<?php echo @$this->item->id; ?>" />
    <?php
    echo JHtml::_( 'form.token' );
	?>
</div>
</form>

<?php
Helper_Display::quickCopyright();
?>