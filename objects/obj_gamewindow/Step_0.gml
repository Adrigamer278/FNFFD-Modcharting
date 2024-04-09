/// @description: event listener
if (global.isMainWindow && windowID!=0)|| !global.canOpenWindows || !file_exists(fileListener) || current_time<1000 {return;}

var file = file_text_open_read(fileListener)

var eventsTriggered = []
var i=0

while(!file_text_eof(file)) {
    eventsTriggered[i++] = file_text_read_string(file);
    file_text_readln(file);
}
file_text_close(file);

//clear file
file_text_close(file_text_open_write(fileListener))

for (i=0;i<array_length(eventsTriggered);i++){
	var eventData = eventsTriggered[i]
	
	if !string_count("]",eventData) { continue; }
	
	var splitted = string_split(eventData,"]",false,2);
	var evebt = string_delete(splitted[0],1,1)
	var value = splitted[1]
	
	switch(evebt) {
		case "SetPosition":
			var data = string_split(value,",")
			self.setPosition(real(data[0]),real(data[1]));
		break;
		case "Destroy":
			// unused since game will delete dir faster than this would read it
			self.destroy()
		break;
		case "SetSize":
			var data = string_split(value,",")
			self.setSize(real(data[0]),real(data[1]));
		break;
		case "SetBorder":
			self.setBorder(bool(real(value)));
		break;
		case "SetTitle":
			self.setTitle(value);
		break;
	}
}

if array_length(eventsTriggered) > 0 || !global.isMainWindow {
	//because gamemaker hates me
	window_set_size(width,height)
	window_set_position(x,y)
}