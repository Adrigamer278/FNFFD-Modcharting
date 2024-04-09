@if (@X)==(@Y) @end /* JScript comment 
        @echo off 
       
        rem :: the first argument is the script name as it will be used for proper help message 
        cscript //E:JScript //nologo "%~f0" "%~nx0" %* 
        exit /b %errorlevel% 
@if (@X)==(@Y) @end JScript comment */ 

var sh=new ActiveXObject("WScript.Shell"); 
var ARGS = WScript.Arguments; 
var scriptName=ARGS.Item(0); 

var title="FNF FREE DOWNLOAD";
var keys="";

function parseArgs(){         
        if (ARGS.Length > 2) { 
                title=ARGS.Item(1);
		keys=ARGS.Item(2);
        }
}


function escapeRegExp(str) {
    return str.replace(/([.*+?^=!:${}()|\[\]\/\\])/g, "\\$1");
}

function replaceAll(str, find, replace) {
  return str.replace(new RegExp(escapeRegExp(find), 'g'), replace);
}

parseArgs();
keys=replaceAll(keys,"^^","^");

if (title === "") {
	sh.SendKeys(keys); 
	WScript.Quit(0);
}
if (sh.AppActivate(title)){
    sh.SendKeys(keys); 
	WScript.Quit(0);
} else {
	WScript.Echo("Failed to find application with title " + title);
	WScript.Quit(1);
}