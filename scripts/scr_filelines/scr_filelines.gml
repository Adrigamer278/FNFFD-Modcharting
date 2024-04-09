function scr_filelines(filename){

	if !file_exists(filename) {return 0}
	
	var buffer = buffer_load(filename);
    var result = buffer_read(buffer, buffer_string);
	
	if (is_undefined(result)) {return 0}

	//stolen code from a forum post
	var newlines_count = string_count("\r", result) + string_count("\n", result) - string_count("\r\n", result);
    
    var last_char = string_char_at(result, string_length(result));
    var is_last_newline = last_char == "\r" || last_char == "\n";

    return 1 + newlines_count - (is_last_newline ? 1 : 0);
}