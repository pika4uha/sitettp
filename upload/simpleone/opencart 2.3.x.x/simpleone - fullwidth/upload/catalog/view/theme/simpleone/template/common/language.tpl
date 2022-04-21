<?php if (count($languages) > 1) { ?>
 <div class="btn-group mt20">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language">
        <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
        <?php foreach ($languages as $language) { ?>
        <?php if ($language['code'] == $code) { ?>
        <img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>">
        <?php } ?>
        <?php } ?>
        </button>
        <ul class="dropdown-menu">
          <?php foreach ($languages as $language) { ?>
          <li><a class="fs12" href="<?php echo $language['code']; ?>"><?php echo $language['name']; ?></a></li>
          <?php } ?>
        </ul>
      <input type="hidden" name="code" value="" />
      <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    </form>
</div>
<?php } ?>
