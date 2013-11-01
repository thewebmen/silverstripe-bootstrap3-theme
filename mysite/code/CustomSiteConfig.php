<?php
class CustomSiteConfig extends DataExtension {

    private static $db = array(
	    "FooterColumn1" => "HTMLText",
	    "FooterColumn2" => "HTMLText",
	    "FooterColumn3" => "HTMLText",
	    "FooterColumn4" => "HTMLText",
    );

    public function updateCMSFields(FieldList $fields) {
        $fields->addFieldToTab('Root.Footer', HtmlEditorField::create('FooterColumn1', 'Footer column 1')->setRows(3));
        $fields->addFieldToTab('Root.Footer', HtmlEditorField::create('FooterColumn2', 'Footer column 2')->setRows(3));
        $fields->addFieldToTab('Root.Footer', HtmlEditorField::create('FooterColumn3', 'Footer column 3')->setRows(3));
        $fields->addFieldToTab('Root.Footer', HtmlEditorField::create('FooterColumn4', 'Footer column 4')->setRows(3));
    }
}