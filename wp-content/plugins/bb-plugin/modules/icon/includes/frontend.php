<?php if ( ! isset( $settings->exclude_wrapper ) ) : ?>
<div class="fl-icon-wrap">
<?php endif; ?>
	<?php
		$rel = ' rel="noopener"';
	if ( ! empty( $settings->link_nofollow ) && 'yes' === $settings->link_nofollow ) {
		$rel = ' rel="noopener nofollow"';
	}
	?>
	<span class="fl-icon">
		<?php if ( ! empty( $settings->link ) ) : ?>
		<?php if ( ! empty( $settings->text ) ) : ?>
		<a href="<?php echo $settings->link; ?>" target="<?php echo $settings->link_target; ?>" tabindex="-1" aria-hidden="true" aria-labelledby="fl-icon-text-<?php echo $module->node; ?>"<?php echo $rel; ?>>
		<?php else : ?>
		<a href="<?php echo $settings->link; ?>" target="<?php echo $settings->link_target; ?>" aria-label="link to <?php echo $settings->link; ?>"<?php echo $rel; ?>>
		<?php endif; ?>
		<?php endif; ?>
		<i class="<?php echo $settings->icon; ?>"></i>
		<?php if ( ! empty( $settings->link ) ) : ?></a><?php endif; ?>
	</span>

	<?php if ( ! empty( $settings->text ) ) : ?>
	<div id="fl-icon-text-<?php echo $module->node; ?>" class="fl-icon-text">
		<?php if ( ! empty( $settings->link ) ) : ?>
		<a href="<?php echo $settings->link; ?>" target="<?php echo $settings->link_target; ?>"<?php echo $rel;?>>
		<?php endif; ?>
		<?php echo $settings->text; ?>
		<?php if ( ! empty( $settings->link ) ) : ?></a><?php endif; ?>
	</div>
	<?php endif; ?>
<?php if ( ! isset( $settings->exclude_wrapper ) ) : ?>
</div>
<?php endif; ?>
