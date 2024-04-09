/// @description save game

if global.isMainWindow && global.canOpenWindows {
	EnvironmentUnsetVariable("__FDWINDOWID")
}

scr_deletewindows();
scr_saveoptions();

