import std.stdint;

alias char simxChar;        /* always 1 byte  */
alias int16_t simxShort;    /* always 2 bytes */
alias uint16_t simxUShort;  /* always 2 bytes */
alias int32_t simxInt;      /* always 4 bytes */
alias uint32_t simxUInt;    /* always 4 bytes */
alias float simxFloat;      /* always 4 bytes */
alias double simxDouble;    /* always 8 bytes */
alias void simxVoid;

version (Windows) {
  alias simxVoid SIMX_THREAD_RET_TYPE;
}

version (Posix) {
  alias simxVoid* SIMX_THREAD_RET_TYPE;
}

extern(C):

/* Following functions only needed for testing endianness robustness */
simxShort extApi_endianConversionShort(simxShort shortValue);
simxUShort extApi_endianConversionUShort(simxUShort shortValue);
simxInt extApi_endianConversionInt(simxInt intValue);
simxFloat extApi_endianConversionFloat(simxFloat floatValue);
simxDouble extApi_endianConversionDouble(simxDouble floatValue);

/* Following functions might be platform specific */
simxChar* extApi_allocateBuffer(simxInt bufferSize);
simxVoid extApi_releaseBuffer(simxChar* buffer);
simxVoid extApi_createMutexes();
simxVoid extApi_deleteMutexes();
simxVoid extApi_lockResources();
simxVoid extApi_unlockResources();
simxVoid extApi_lockSendStart();
simxVoid extApi_unlockSendStart();
simxInt extApi_getTimeInMs();
simxInt extApi_getTimeDiffInMs(simxInt lastTime);
simxVoid extApi_initRand();
simxFloat extApi_rand();
simxVoid extApi_sleepMs(simxInt ms);
simxVoid extApi_switchThread();
simxChar extApi_areStringsSame(const simxChar* str1,const simxChar* str2);
simxInt extApi_getStringLength(const simxChar* str);
simxChar* extApi_readFile(const simxChar* fileName,simxInt* len);
simxChar extApi_launchThread(SIMX_THREAD_RET_TYPE function(simxVoid*) startAddress);
simxChar extApi_connectToServer_socket(const simxChar* theConnectionAddress,simxInt theConnectionPort);
simxVoid extApi_cleanUp_socket();
simxInt extApi_send_socket(const simxChar* data,simxInt dataLength);
simxInt extApi_recv_socket(simxChar* data,simxInt maxDataLength);
