// JavaScript Document
(function() {
    // Creates a new plugin class and a custom listbox
    tinymce.create('tinymce.plugins.km_icons', {
        createControl: function(n, cm) {
            switch (n) {                
                case 'km_icons':
                var c = cm.createButton('km_icons', {
                    title : 'Tabs shortcodes',
                    image : '../wp-content/plugins/km-shortcodes/assets/images/icons.png',
                    onclick : function() {
                        tb_show('Select icons', '../wp-content/plugins/km-shortcodes/assets/js/plugins/icons.html?TB_iframe=1');
                    }
                });

        
                // Return the new splitbutton instance
                return c;
                
            }
            return null;
        }
    });
    tinymce.PluginManager.add('km_icons', tinymce.plugins.km_icons);
})();

