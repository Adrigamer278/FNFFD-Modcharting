function scr_jsonparse(filename){
	if(file_exists(filename))
	{
		var file = file_text_open_read(filename);
		var jsonContent = "";
		
		while(!file_text_eof(file))
		{
			jsonContent += file_text_read_string(file);
			file_text_readln(file);
		}
		file_text_close(file);
		return json_parse(jsonContent);
	}
	
	return undefined
}