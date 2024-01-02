var i;
for (i=0; i<image_yscale;i++) {
    var dingus = instance_create(x,y+(i*16),obj_notespace)
    with(dingus) {
        dingus.spif=i
        dingus.row=obj_notecreater.row
        dingus.image_blend=obj_notecreater.image_blend
    }
}
if i=image_yscale {
    instance_destroy();
}

