jQuery(document).ready(function(){

    jQuery(window).resize(function() {
        jQuery('.sync-height').syncheight();
    });

});

jQuery(window).load(function() {
    jQuery('.sync-height').syncheight();
});