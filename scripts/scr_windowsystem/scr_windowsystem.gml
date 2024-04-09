global.extraWindows = []
global.canOpenWindows = (os_type == os_windows || os_type == os_linux || os_type == os_macosx) && os_browser == browser_not_a_browser

function scr_gainfocus() {
	if !global.canOpenWindows { return; }
	var focusPath = working_directory+"tools/internal/gainFocus.bat"
	ExecProcessFromArgVAsync([focusPath,window_get_caption(),""])
	ProcessExecuteAsync("\""+focusPath+"\" " +"\""+window_get_caption()+"\" " +"\"\"")
}

function scr_setupwindows(){
	global.isMainWindow = !bool(EnvironmentGetVariableExists("__FDWINDOWID"))
	global.localWindows = 0
	
	// handles listening for external windows and sets some things in the main
	var thisWin = instance_create(0,0,obj_gamewindow)
	global.thisWindow = thisWin;
	
	if !global.isMainWindow || !global.canOpenWindows { return; } // just make listeners!
	
	var dir = game_save_id + "/windows/";
	if directory_exists(dir) { directory_destroy(dir); show_debug_message("destroying") } // clear up
	directory_create(dir);
	
	// regenerate main win listener
	file_text_close(file_text_open_write(thisWin.fileListener))
}

function scr_makewindow() {
	var win = instance_create(0,0,obj_gamewindow)
	array_push(global.extraWindows,win)
	return win
}

function scr_clearwindows() {
	for (i=0;i<array_length(global.extraWindows);i++) {
		var win = global.extraWindows[i]
		if instance_exists(win) {
			win.destroy();
		}
	}
}

function scr_deletewindows() {	
	if !global.isMainWindow { return; }
	scr_clearwindows()
	
	var dir = game_save_id + "/windows/";
	if directory_exists(dir) { directory_destroy(dir); } // clear up
	
	if variable_global_exists("thisWindow") {
		global.thisWindow.destroy();
	}
	
	global.localWindows = 0
}