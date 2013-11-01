<?php
class Page extends SiteTree {

	public function ClassNameToLower() {
		return strtolower(get_class($this));
	}

	public function BootstrapLinkingMode(){
		$mode = parent::LinkingMode();
		if($mode == 'current' || $mode == 'section') $mode = 'active';
		return $mode;
	}

}
class Page_Controller extends ContentController {

	public function init() {
		parent::init();

		Requirements::themedCSS('bootstrap.min');
		Requirements::themedCSS('form');
		Requirements::themedCSS('layout');

		$ThemeDir = $this->ThemeDir();
		Requirements::javascript(FRAMEWORK_DIR.'/thirdparty/jquery/jquery.min.js');
		Requirements::javascript($ThemeDir.'/js/bootstrap.min.js');
		Requirements::javascript($ThemeDir.'/js/jquery.syncheight.js');
		Requirements::javascript($ThemeDir.'/js/main.js');
	}

}