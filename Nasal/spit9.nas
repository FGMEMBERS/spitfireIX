


#var main_loop = func {

#}

#setlistener("/sim/signals/fdm-initialized",main_loop);


aircraft.steering.init();

aircraft.livery.init("Aircraft/spitfireIX/Models/Liveries", "sim/model/livery/name");

var door = aircraft.door.new ("/controls/doors/door/",1.5);

var canopy = aircraft.door.new ("/controls/doors/canopy/",1.5);

var logo_dialog = gui.OverlaySelector.new("Select Logo", "Aircraft/Generic/Logos", "sim/model/logo/name", nil, "sim/multiplay/generic/string");

var config = gui.Dialog.new("/sim/gui/dialogs/appearance/dialog", "Aircraft/spitfireIX/Dialogs/config.xml");
var payload = gui.Dialog.new("/sim/gui/dialogs/payload/dialog", "Aircraft/spitfireIX/Dialogs/payload.xml");

var save_list = ["/combat/enabled"];

aircraft.data.add(save_list);
