// extra window id lol

x = window_get_x()
y = window_get_y()
width = window_get_width()
height = window_get_height()
title = window_get_caption()
border = window_get_showborder()

if global.isMainWindow {
	windowID=global.localWindows
	global.localWindows++
} else {
	windowID = int64(bool(EnvironmentGetVariableExists("__FDWINDOWID")) ? EnvironmentGetVariable("__FDWINDOWID") : string(1));
	window_set_caption("WINDOW " +string(windowID))
}

fileListener=game_save_id + "windows/"+string(windowID)+".tmp"
show_debug_message(fileListener)

if global.isMainWindow && global.canOpenWindows {
	// creates the file!
	file_text_close(file_text_open_write(fileListener))
}

processID = global.isMainWindow ? 0 : ProcIdFromSelf();

makeWin = function(args) {
	// fix for html5
	if !global.canOpenWindows { return; }
	
	if args==undefined {args=[]}
	
	var what = GetArgVFromProcid(ProcIdFromSelf())
	for (i=0;i<array_length(args);i++) {
		array_push(what,string(args[i]))
	}
	
	EnvironmentSetVariable("__FDWINDOWID", string(windowID));
	
	processID = ExecProcessFromArgVAsync(what);
}

destroy = function() {
	// destroy that window lmao
	if processID!=0 {
		ExecProcessFromArgVAsync(["taskkill","/PID",processID])
	}
	
	if global.isMainWindow {
		instance_destroy(self)
		file_delete(fileListener)
	}
}

sendEvent = function(eventName,args) {
	if !global.canOpenWindows { return; }
	var content = ""
	for (i=0;i<array_length(args);i++) {
		content += string(args[i])+string((i==array_length(args)-1) ? "" : ",")
	}
	
	var file = file_text_open_append(fileListener)
	file_text_write_string(file,"["+eventName+"]"+string(content))
	file_text_writeln(file)
    file_text_close(file);
}

setPosition = function(xV,yV) {
	if windowID != 0 && global.isMainWindow {
		sendEvent("SetPosition",[xV,yV])
		
		x = xV
		y = yV
		return;
	}
	
	window_set_position(xV,yV)
	
	x = xV
	y = yV
}

setBorder = function(boolean) {
	if windowID != 0 && global.isMainWindow {
		sendEvent("SetBorder",[boolean])
		
		border = boolean
		return;
	}
	
	window_set_showborder(boolean)
	
	border = boolean
}

setSize = function(xV,yV) {
	if windowID != 0 && global.isMainWindow {
		sendEvent("SetSize",[xV,yV])
		
		width = xV
		height = yV
		return;
	}
	
	window_set_size(xV,yV)
	
	width = xV
	height = yV
}

setTitle = function(ntitle) {
	if windowID != 0 && global.isMainWindow {
		sendEvent("SetTitle",[ntitle])
		
		title = ntitle
		return;
	}
	
	window_set_caption(ntitle)
	
	title = ntitle
}