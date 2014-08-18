<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php //foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php //echo $breadcrumb['separator']; ?><a href="<?php //echo $breadcrumb['href']; ?>"><?php //echo $breadcrumb['text']; ?></a>
    <?php //} ?>
  </div>
  <table align="center" class="tabTitle" width="80%">
    <tr>
      <td width="37%" height="27px" style="border-bottom:1px solid black"></td>
      <td rowspan="2" style="padding-left:15px; padding-right:15px; margin-top:5px"><br>
        <h1 style="color:black;font-size:18pt;text-align:center;font-family:calibri"; ><?php echo strtoupper(($heading_title=="ABOUT")? "About Us":$heading_title); ?></h1>
      </td>
      <td width="37%"  style="border-bottom:1px solid black"></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    </table>

    <style>
        .tabTitle{
          border-collapse:collapse;
         
        }
        .tabTitle tr td{
          

        }
    </style>
  <?php echo $description; ?>
  <!--div class="buttons">
    <div class="right"><a href="<?php //echo $continue; ?>" class="button"><?php //echo $button_continue; ?></a></div>
  </div-->
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>