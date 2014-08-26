<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php //foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php //echo $breadcrumb['separator']; ?><a href="<?php //echo $breadcrumb['href']; ?>"><?php //echo $breadcrumb['text']; ?></a>
    <?php //} ?>
  </div>

  <table cellpadding="0" cellspacing="0" class="headingtitle" style="margin: 20px auto 10px;width: 930px; min-width: 930px">
          <tr>
              <td><hr /></td>
              <td width="200px"><h1><?php echo strtoupper(($heading_title=="ABOUT")? "About Us":$heading_title); ?></h1></td>
              <td><hr /></td>
            </tr>
        </table>


  <?php echo $description; ?>
  <!--div class="buttons">
    <div class="right"><a href="<?php //echo $continue; ?>" class="button"><?php //echo $button_continue; ?></a></div>
  </div-->
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>