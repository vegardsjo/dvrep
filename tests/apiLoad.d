import std.stdio;
import std.conv;
import cvrep.v_repConst;
import cvrep.v_repLib;

void main()
{
  void *lib = loadVrepLibrary("libv_rep.dylib");
  writefln("lib: %x\n", lib);

  getVrepProcAddresses(lib);
  writefln("simGetNameSuffix: %x\n", simGetNameSuffix);
}
