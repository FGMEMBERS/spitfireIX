


var my_canvas = canvas.new({
    "name": "crosshair",   # The name is optional but allow for easier identification
    "size": [512, 512], 
    "view": [256, 256],  
    "mipmapping": 1       # Enable mipmapping (optional)
});

my_canvas.addPlacement({"node": "reflectorglass"});
my_canvas.setColorBackground(0.3, 0.3, 0.3, 0.1);

var group = my_canvas.createGroup()
                     .setTranslation(127, 100);
         #            .setColorBackground(0.8, 0.3, 0.3, 0.1);

    canvas.parsesvg(group, "Aircraft/spitfireIX/Models/Instruments/gunsight-mk2/crosshair.svg");


#var text = group.createChild("text", "optional-id-for element")
        #        .setColorBackground(0.8, .8, 0.3, 0.02);
 #               .setTranslation(118, 100)      # The origin is in the top left corner
#                .setAlignment("left-center") # All values from osgText are supported (see $FG_ROOT/Docs/README.osgtext)
#                .setFont("LiberationFonts/LiberationSans-Regular.ttf") # Fonts are loaded either from $AIRCRAFT_DIR/Fonts or $FG_ROOT/Fonts
#                .setFontSize(24, 1.2)        # Set fontsize and optionally character aspect ratio
#                .setColor(1,0,0)             # Text color
#                .setText("This is a text element");
# ...
#text.hide();
# ...
#text.setText("Hello!").show();
