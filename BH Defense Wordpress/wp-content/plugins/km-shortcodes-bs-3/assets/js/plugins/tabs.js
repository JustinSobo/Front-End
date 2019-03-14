// JavaScript Document
(function() {
    // Creates a new plugin class and a custom listbox
    tinymce.create('tinymce.plugins.km_tabs', {
        createControl: function(n, cm) {
            switch (n) {                
                case 'km_tabs':
                var c = cm.createButton('km_tabs', {
                    title : 'Tabs shortcodes',
                    image : '../wp-content/plugins/km-shortcodes/assets/images/tabs.png',
                    onclick : function() {
                        tb_show('Tab builder', '../wp-content/plugins/km-shortcodes/assets/js/plugins/tabs.html?TB_iframe=1');
                    }
                });

        
                // Return the new splitbutton instance
                return c;
                
            }
            return null;
        }
    });
    tinymce.PluginManager.add('km_tabs', tinymce.plugins.km_tabs);
})();
