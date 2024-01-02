/// @description fade in and save
switch(room){
    case rm_menu:
        obj_titleenter.flash=true
    break;
    case rm_stuffselect:
        instance_create(0,0,obj_fadein)
    break;
    case rm_stageselect:
        instance_create(0,0,obj_fadein)
    break;
    case rm_freeplay:
        instance_create(0,0,obj_fadein)
    break;
    case rm_options:
        instance_create(0,0,obj_fadein)
    break;
}

