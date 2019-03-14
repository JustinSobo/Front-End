// JavaScript Document
(function() {
    // Creates a new plugin class and a Carousel // ADD SOON
    tinymce.create('tinymce.plugins.km_carousel', {
        createControl: function(n, cm) {
            switch (n) {                
                case 'km_carousel':
                var c = cm.createSplitButton('km_carousel', {
                    title : 'Carousel',
                    image : '../wp-content/plugins/km-shortcodes/assets/images/carousel.png',
                    onclick : function() {
                    }
                });

                c.onRenderMenu.add(function(c, m) {
					// Carousel
					m.add({title : 'Carousel & Iaage Slider', 'class' : 'mceMenuItemTitle'}).setDisabled(1);
                    m.add({title : 'Default', onclick : function() {
                        tinyMCE.activeEditor.execCommand( 'mceInsertContent', false, '[carousel]' );
                    }}); 
                    m.add({title : 'Other Post ID/Size', onclick : function() {
                        tinyMCE.activeEditor.execCommand( 'mceInsertContent', false, '[carousel id=25 size="large"]' );
                    }});
                });

                // Return the new splitbutton instance
                return c;
                
            }
            return null;
        }
    });
    tinymce.PluginManager.add('km_carousel', tinymce.plugins.km_carousel);
})();

