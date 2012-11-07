all: ../lib/extApi.a ../lib/v_repLib.a

../lib/extApi.a: extApi.d extApiPlatform.d v_repConst.d
	dmd -lib $^ -L../lib/libremoteApi.dylib -od../lib

../lib/v_repLib.a: v_repLib.d v_repConst.d
	dmd -lib $^ -L../lib/libv_rep.dylib -od../lib
