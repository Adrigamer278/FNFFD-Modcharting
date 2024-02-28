sprite_draw=spr_w0s1dialog1 //what sprite is used as the bg
image_draw=0 //what image index the cutscene is on
var fadein=true //if there is a fadein to the cutscene
switch(obj_stats.cutgoing-obj_stats.weekndgoing) {
    case 0:
        var song=1;
        var count=1;
    break;
    case 0.1:
        var song=2;
        var count=1;
    break;
    case 0.2:
        var song=2;
        var count=2;
    break;
    default:
        var song=1;
        var count=1;
    break;
}

var cutbox = -1

if obj_stats.modgoing = 0 {
	var asset=string(obj_stats.weekndgoing)+string("s")+string(song)+string("dialog")+string(count);
	cutbox=asset_get_index(string("obj_w")+asset)
	sprite_draw=asset_get_index(string("spr_w")+asset)
}

//do the stuff
if fadein instance_create(0,0,obj_fadein);

if cutbox <=-1 { // no textbox for cutscene so just unlock week
	event_user(0)
	return;
}
instance_create(0,0,cutbox)

