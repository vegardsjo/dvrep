import std.stdio;
import std.conv;
import v_repConst;
import v_repLib;

extern (C) void *dlopen(const char*, int);
extern (C) char* dlerror();

void main()
{
  void *lib = loadVrepLibrary("libv_rep.dylib");
  //void *lib = dlopen("libv_rep.dylib", 2);

  char *error = dlerror();
  if (error != null)
    writefln("%s", to!string(error));

  writefln("lib: %x\n", lib);
  int status = getVrepProcAddresses(lib);


  writeln(status);
}
