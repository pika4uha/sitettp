<?php if (count($currencies) > 1) { ?>
<div class="btn-group mt20">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="currency">
    <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
    <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['symbol_left'] && $currency['code'] == $code) { ?>
    <strong><?php echo $currency['symbol_left']; ?></strong>
    <?php } elseif ($currency['symbol_right'] && $currency['code'] == $code) { ?>
    <strong><?php echo $currency['symbol_right']; ?></strong>
    <?php } ?>
    <?php } ?>
    </button>
    <ul class="dropdown-menu">
      <?php foreach ($currencies as $currency) { ?>
      <?php if ($currency['symbol_left']) { ?>
      <li><button class="currencyfix currency-select btn-block" type="button" name="<?php echo $currency['code']; ?>"><?php echo $currency['title']; ?></button></li>
      <?php } else { ?>
      <li><button class="currencyfix currency-select btn-block" type="button" name="<?php echo $currency['code']; ?>"><?php echo $currency['title']; ?></button></li>
      <?php } ?>
      <?php } ?>
    </ul>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</div>
<?php } ?>

