#define libxprocess_init
globalvar fd_stdin, fd_stdout, pid_stdin, pid_stdout, fd_enable;
fd_stdin  = -1; 
fd_stdout = -1;
fd_enable = false;

#define execute_shell
prog = argument0; arg = argument1;
prog = string_replace_all(prog, @'\', @'\\');
prog = string_replace_all(prog, @'"', @'\"');
if (os_type == os_windows && 
  (string_lower(filename_name(prog)) == "cmd" ||
  string_lower(filename_name(prog)) == "cmd.exe")) 
{ prog = "cmd.exe"; arg = "/c " + arg; } 
prog = @'"' + prog + @'"';
pid = ProcessExecuteAsync(prog + " " + arg);
if (!fd_enable) {
  FreeExecutedProcessStandardInput(pid);
  FreeExecutedProcessStandardOutput(pid);
}
return pid;

#define execute_program
prog = argument0; arg = argument1; wait = argument2;
pid = execute_shell(prog, arg);
while (!CompletionStatusFromExecutedProcess(pid) && wait) { }
return pid;

#define file_text_enable_stddesc
enable = argument0;
fd_enable = enable;

#define file_text_open_write_stdin
pid = argument0;
if (fd_enable) {
  fd_stdin += 1; pid_stdin[fd_stdin] = pid;
  return pid_stdin[fd_stdin];
}
return -1;

#define file_text_write_string_stdin
file = argument0; str = argument1;
return ExecutedProcessWriteToStandardInput(file, str);

#define file_text_close_stdin
file = argument0;
return FreeExecutedProcessStandardInput(file);

#define file_text_open_read_stdout
pid = argument0;
if (fd_enable) {
  fd_stdout += 1; pid_stdout[fd_stdout] = pid;
  return pid_stdout[fd_stdout];
}
return -1;

#define file_text_read_string_stdout
file = argument0;
return ExecutedProcessReadFromStandardOutput(file);

#define file_text_close_stdout
file = argument0;
return FreeExecutedProcessStandardOutput(file);

#define GetArgVFromProcid
proc_id = argument0;
var kinfo_proc, kinfo_argv;
kinfo_proc = ProcInfoFromProcIdEx(proc_id, KINFO_EXEP | KINFO_ARGV);
kinfo_argv[0] = ExecutableImageFilePath(kinfo_proc);
if (CommandLineLength(kinfo_proc) >= 2) {
  for (var i = 1; i < CommandLineLength(kinfo_proc); i++) {
    kinfo_argv[i] = CommandLine(kinfo_proc, i);
  }
}
FreeProcInfo(kinfo_proc);
return kinfo_argv;

#define ExecProcessFromArgVAsync
kinfo_argv = argument0;
var cmdline = "";
for (var i = 0; i < array_length(kinfo_argv); i++) {
  var tmp = string_replace_all(kinfo_argv[i], "\\", "\\\\");
  tmp = "\"" + string_replace_all(tmp, "\"", "\\\"") + "\"";
  if (i < array_length(kinfo_argv) - 1) tmp += " ";
  cmdline += tmp;
}
return ProcessExecuteAsync(cmdline);
