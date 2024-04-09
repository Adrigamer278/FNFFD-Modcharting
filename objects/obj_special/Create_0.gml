switch(obj_stats.specialroom) {
    case "soundtest":
        instance_create(0,0,obj_soundtest)
    break;
	case "epicSecretSatellite":
		instance_create(0,0,obj_satellitewindow)
    break;
    case "shader":
        //instance_create(0,0,obj_shaderWTF)
    break;
    default:
        instance_create(0,0,obj_chimpgame)
    break;
}
instance_destroy();

