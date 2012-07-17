var masterarm = props.globals.getNode("controls/armament/master-arm");
var gun0 = props.globals.getNode("controls/armament/gun[0]/fire");
var gun1 = props.globals.getNode("controls/armament/gun[1]/fire");
var gun2 = props.globals.getNode("controls/armament/gun[2]/fire");
var gun3 = props.globals.getNode("controls/armament/gun[3]/fire");
var tracergun0 = props.globals.getNode("controls/armament/gun[0]/tracer");
var tracergun1 = props.globals.getNode("controls/armament/gun[1]/tracer");
var tracerevery = 20;
		var times0 = 49;
var cannon0 = props.globals.getNode("controls/armament/cannon[0]/fire");
var cannon1 = props.globals.getNode("controls/armament/cannon[1]/fire");
var statgun0 = props.globals.getNode("controls/armament/gun[0]/serviceable");
var statgun1 = props.globals.getNode("controls/armament/gun[1]/serviceable");
var statgun2 = props.globals.getNode("controls/armament/gun[2]/serviceable");
var statgun3 = props.globals.getNode("controls/armament/gun[3]/serviceable");
var statcannon0 = props.globals.getNode("controls/armament/cannon[0]/serviceable");
var statcannon1 = props.globals.getNode("controls/armament/cannon[1]/serviceable");

setlistener("/controls/armament/trigger", func(n) {
    var stat = n.getValue();
		if 	( stat ) {
				if ( masterarm.getValue() )  {
						if (statgun0.getValue() == 1) {
								gun0.setValue (1);
						}
						if (statgun1.getValue() == 1) {
								gun1.setValue (1);
						}
						if (statgun2.getValue() == 1) {
								gun2.setValue (1);
						}
						if (statgun3.getValue() == 1) {
								gun3.setValue (1);
						}
				}
     } else {
				gun0.setValue (0);
				gun1.setValue (0);
				gun2.setValue (0);
				gun3.setValue (0);
			}
});

setlistener("/controls/armament/trigger1", func(n) {
    var stat = n.getValue();
		if 	( stat ) {
				if ( masterarm.getValue() )  {
						if (statcannon0.getValue() == 1) {
								cannon0.setValue (1);
						}
						if (statcannon1.getValue() == 1) {
								cannon1.setValue (1);
						}
				}
     } else {
				cannon0.setValue (0);
				cannon1.setValue (0);
			}
});

setlistener("/ai/submodels/submodel[1]/count", func(n) {
    var count = n.getValue();
		print ( count, " " , times0 * tracerevery);
		tracergun0.setValue(0);
		if (count <= times0 * tracerevery) {
					print ("tracer at§" , count);
				 tracergun0.setValue(1);
					times0.setValue(times0 -1 );
		}
});

setlistener("sim/model/aircraft/impact/gun", func(n) {
    var impact = n.getValue();
    var solid = getprop(impact ~ "/material/solid");
    
    if (solid) {
#      var long = getprop(impact ~ "/impact/longitude-deg");    
#      var lat = getprop(impact ~ "/impact/latitude-deg");
			setprop("sim/model/aircraft/impact/splash",0);
    }
		else {
			setprop("sim/model/aircraft/impact/splash",1);
		}
  });



