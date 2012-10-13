== To compile remote api test ==
    gcc -DNON_MATLAB_PARSING -c extApi.c -o lib/extApi.o
    gcc -DNON_MATLAB_PARSING -c extApiPlatform.c -o lib/extApiPlatform.o
    dmd v_repConst.d extApi.d extApiPlatform.d -Llib/extApi.o -Llib/extApiPlatform.o -L../remoteApiSharedLib/libremoteApi.dylib bubbleRobClient.d -ofbubbleRobClient

== To compile regular api test ==
    gcc -c v_repLib.cpp -o lib/v_repLib.o
    dmd apiLoad.d -Llib/v_repLib.o

