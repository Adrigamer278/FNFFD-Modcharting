sel=0
mappingkeys=false
changingskin=false
keyd=0
wait=10
//downscroll
if obj_stats.downscroll=false {
    var coolboys = "false"
} else {
    var coolboys = "true"
}
options[0]=(string("DOWNSCROLL: ")+string(coolboys))
//ghost tapping
options[1]="GHOST TAPPING: FALSE"
//keybinds
options[2]="UPDATE KEYBINDS"
//note tpyes
if obj_stats.readable = false {
    var burger="funny"
} else {
    var burger="readable"
}
options[3]=(string("NOTE TYPE: ")+string(burger))
//skins
if shaderbroke=false {
    options[4]="CHANGE SKIN"
}
//length of list
sels=array_length_1d(options)-1

