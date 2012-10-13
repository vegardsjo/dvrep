/++
 + Ported to D by Vegard Sjonfjell, Oct 11 2012
 +/

public import v_repConst;
import extApiPlatform;

extern (C):

/* The remote API functions */
simxInt simxGetJointPosition(simxInt jointHandle,simxFloat* position,simxInt operationMode);
simxInt simxSetJointPosition(simxInt jointHandle,simxFloat position,simxInt operationMode);
simxInt simxGetJointMatrix(simxInt jointHandle,simxFloat* matrix,simxInt operationMode);
simxInt simxSetSphericalJointMatrix(simxInt jointHandle,simxFloat* matrix,simxInt operationMode);
simxInt simxSetJointTargetVelocity(simxInt jointHandle,simxFloat targetVelocity,simxInt operationMode);
simxInt simxSetJointTargetPosition(simxInt jointHandle,simxFloat targetPosition,simxInt operationMode);
simxInt simxJointGetForce(simxInt jointHandle,simxFloat* force,simxInt operationMode);
simxInt simxSetJointForce(simxInt jointHandle,simxFloat force,simxInt operationMode);
simxInt simxReadForceSensor(simxInt forceSensorHandle,simxChar* state,simxFloat* forceVector,simxFloat* torqueVector,simxInt operationMode);
simxInt simxBreakForceSensor(simxInt forceSensorHandle,simxInt operationMode);
simxInt simxReadVisionSensor(simxInt sensorHandle,simxChar* detectionState,simxFloat** auxValues,simxInt** auxValuesCount,simxInt operationMode);
simxInt simxGetObjectHandle(const simxChar* objectName,simxInt* handle,simxInt operationMode);
simxInt simxGetVisionSensorImage(simxInt sensorHandle,simxInt* resolution,simxChar** image,simxChar options,simxInt operationMode);
simxInt simxSetVisionSensorImage(simxInt sensorHandle,simxChar* image,simxInt bufferSize,simxChar options,simxInt operationMode);
simxInt simxGetVisionSensorDepthBuffer(simxInt sensorHandle,simxInt* resolution,simxFloat** buffer,simxInt operationMode);
simxInt simxGetObjectChild(simxInt parentObjectHandle,simxInt childIndex,simxInt* childObjectHandle,simxInt operationMode);
simxInt simxGetObjectParent(simxInt childObjectHandle,simxInt* parentObjectHandle,simxInt operationMode);
simxInt simxReadProximitySensor(simxInt sensorHandle,simxChar* detectionState,simxFloat* detectedPoint,simxInt* detectedObjectHandle,simxFloat* detectedSurfaceNormalVector,simxInt operationMode);
simxInt simxLoadModel(const simxChar* modelPathAndName,simxChar options,simxInt* baseHandle,simxInt operationMode);
simxInt simxLoadUI(const simxChar* uiPathAndName,simxChar options,simxInt* count,simxInt** uiHandles,simxInt operationMode);
simxInt simxLoadScene(const simxChar* scenePathAndName,simxChar options,simxInt operationMode);
simxInt simxStartSimulation(simxInt operationMode);
simxInt simxPauseSimulation(simxInt operationMode);
simxInt simxStopSimulation(simxInt operationMode);
simxInt simxGetUIHandle(const simxChar* uiName,simxInt* handle,simxInt operationMode);
simxInt simxGetUISlider(simxInt uiHandle,simxInt uiButtonID,simxInt* position,simxInt operationMode);
simxInt simxSetUISlider(simxInt uiHandle,simxInt uiButtonID,simxInt position,simxInt operationMode);
simxInt simxGetUIEventButton(simxInt uiHandle,simxInt* uiEventButtonID,simxInt* auxValues,simxInt operationMode);
simxInt simxGetUIButtonProperty(simxInt uiHandle,simxInt uiButtonID,simxInt* prop,simxInt operationMode);
simxInt simxSetUIButtonProperty(simxInt uiHandle,simxInt uiButtonID,simxInt prop,simxInt operationMode);
simxInt simxAddStatusbarMessage(const simxChar* message,simxInt operationMode);
simxInt simxAuxiliaryConsoleOpen(const simxChar* title,simxInt maxLines,simxInt mode,simxInt* position,simxInt* size,simxFloat* textColor,simxFloat* backgroundColor,simxInt* consoleHandle,simxInt operationMode);
simxInt simxAuxiliaryConsoleClose(simxInt consoleHandle,simxInt operationMode);
simxInt simxAuxiliaryConsolePrint(simxInt consoleHandle,const simxChar* txt,simxInt operationMode);
simxInt simxAuxiliaryConsoleShow(simxInt consoleHandle,simxChar showState,simxInt operationMode);
simxInt simxGetObjectOrientation(simxInt objectHandle,simxInt relativeToObjectHandle,simxFloat* eulerAngles,simxInt operationMode);
simxInt simxGetObjectPosition(simxInt objectHandle,simxInt relativeToObjectHandle,simxFloat* position,simxInt operationMode);
simxInt simxSetObjectOrientation(simxInt objectHandle,simxInt relativeToObjectHandle,const simxFloat* eulerAngles,simxInt operationMode);
simxInt simxSetObjectPosition(simxInt objectHandle,simxInt relativeToObjectHandle,const simxFloat* position,simxInt operationMode);
simxInt simxSetObjectParent(simxInt objectHandle,simxInt parentObject,simxChar keepInPlace,simxInt operationMode);
simxInt simxSetUIButtonLabel(simxInt uiHandle,simxInt uiButtonID,const simxChar* upStateLabel,const simxChar* downStateLabel,simxInt operationMode);
simxInt simxGetLastErrors(simxInt* errorCnt,simxChar** errorStrings,simxInt operationMode);
simxInt simxGetArrayParameter(simxInt paramIdentifier,simxFloat* paramValues,simxInt operationMode);
simxInt simxSetArrayParameter(simxInt paramIdentifier,const simxFloat* paramValues,simxInt operationMode);
simxInt simxGetBooleanParameter(simxInt paramIdentifier,simxChar* paramValue,simxInt operationMode);
simxInt simxSetBooleanParameter(simxInt paramIdentifier,simxChar paramValue,simxInt operationMode);
simxInt simxGetIntegerParameter(simxInt paramIdentifier,simxInt* paramValue,simxInt operationMode);
simxInt simxSetIntegerParameter(simxInt paramIdentifier,simxInt paramValue,simxInt operationMode);
simxInt simxGetFloatingParameter(simxInt paramIdentifier,simxFloat* paramValue,simxInt operationMode);
simxInt simxSetFloatingParameter(simxInt paramIdentifier,simxFloat paramValue,simxInt operationMode);
simxInt simxGetStringParameter(simxInt paramIdentifier,simxChar** paramValue,simxInt operationMode);
simxInt simxGetCollisionHandle(const simxChar* collisionObjectName,simxInt* handle,simxInt operationMode);
simxInt simxGetDistanceHandle(const simxChar* distanceObjectName,simxInt* handle,simxInt operationMode);
simxInt simxReadCollision(simxInt collisionObjectHandle,simxChar* collisionState,simxInt operationMode);
simxInt simxReadDistance(simxInt distanceObjectHandle,simxFloat* minimumDistance,simxInt operationMode);
simxInt simxRemoveObject(simxInt objectHandle,simxInt operationMode);
simxInt simxRemoveUI(simxInt uiHandle,simxInt operationMode);
simxInt simxCloseScene(simxInt operationMode);
simxInt simxGetObjects(simxInt objectType,simxInt* objectCount,simxInt** objectHandles,simxInt operationMode);
simxInt simxDisplayDialog(const simxChar* titleText,const simxChar* mainText,simxInt dialogType,const simxChar* initialText,simxFloat* titleColors,simxFloat* dialogColors,simxInt* dialogHandle,simxInt* uiHandle,simxInt operationMode);
simxInt simxEndDialog(simxInt dialogHandle,simxInt operationMode);
simxInt simxGetDialogInput(simxInt dialogHandle,simxChar** inputText,simxInt operationMode);
simxInt simxGetDialogResult(simxInt dialogHandle,simxInt* result,simxInt operationMode);
simxInt simxCopyPasteObjects(const simxInt* objectHandles,simxInt objectCount,simxInt** newObjectHandles,simxInt* newObjectCount,simxInt operationMode);
simxInt simxGetObjectSelection(simxInt** objectHandles,simxInt* objectCount,simxInt operationMode);
simxInt simxSetObjectSelection(const simxInt* objectHandles,simxInt objectCount,simxInt operationMode);
simxInt simxClearFloatSignal(const simxChar* signalName,simxInt operationMode);
simxInt simxClearIntegerSignal(const simxChar* signalName,simxInt operationMode);
simxInt simxClearStringSignal(const simxChar* signalName,simxInt operationMode);
simxInt simxGetFloatSignal(const simxChar* signalName,simxFloat* signalValue,simxInt operationMode);
simxInt simxGetIntegerSignal(const simxChar* signalName,simxInt* signalValue,simxInt operationMode);
simxInt simxGetStringSignal(const simxChar* signalName,simxChar** signalValue,simxInt* signalLength,simxInt operationMode);
simxInt simxSetFloatSignal(const simxChar* signalName,simxFloat signalValue,simxInt operationMode);
simxInt simxSetIntegerSignal(const simxChar* signalName,simxInt signalValue,simxInt operationMode);
simxInt simxSetStringSignal(const simxChar* signalName,const simxChar* signalValue,simxInt signalLength,simxInt operationMode);
simxInt simxGetObjectFloatParameter(simxInt objectHandle,simxInt parameterID,simxFloat* parameterValue,simxInt operationMode);
simxInt simxSetObjectFloatParameter(simxInt objectHandle,simxInt parameterID,simxFloat parameterValue,simxInt operationMode);
simxInt simxGetObjectIntParameter(simxInt objectHandle,simxInt parameterID,simxInt* parameterValue,simxInt operationMode);
simxInt simxSetObjectIntParameter(simxInt objectHandle,simxInt parameterID,simxInt parameterValue,simxInt operationMode);
simxInt simxGetModelProperty(simxInt objectHandle,simxInt* prop,simxInt operationMode);
simxInt simxSetModelProperty(simxInt objectHandle,simxInt prop,simxInt operationMode);
simxInt simxRMLPosition(simxInt dofs,simxDouble timeStep,simxInt flags,const simxDouble* currentPosVelAccel,const simxDouble* maxVelAccelJerk,const simxChar* selection,const simxDouble* targetPosVel,simxInt* rmlState,simxDouble* newPosVelAccel,simxInt operationMode);
simxInt simxRMLVelocity(simxInt dofs,simxDouble timeStep,simxInt flags,const simxDouble* currentPosVelAccel,const simxDouble* maxAccelJerk,const simxChar* selection,const simxDouble* targetVel,simxInt* rmlState,simxDouble* newPosVelAccel,simxInt operationMode);

/* Very first function to call */
simxInt simxStart(const simxChar* connectionAddress,simxInt connectionPort,simxChar waitUntilConnected,simxChar doNotReconnectOnceDisconnected,simxInt timeOutInMs);

/* Very last function to call */
simxVoid simxFinish();

/* The remote API helper functions */
simxInt simxGetPingTime(simxInt* pingTime);
simxInt simxGetLastCmdTime();
simxInt simxSynchronousTrigger();
simxInt simxSynchronous(simxChar enable);
simxInt simxPauseCommunication(simxChar pause);
simxInt simxGetInMessageInfo(simxInt infoType,simxInt* info);
simxInt simxGetOutMessageInfo(simxInt infoType,simxInt* info);
simxInt simxGetConnectionId();
simxChar* simxCreateBuffer(simxInt bufferSize);
simxVoid simxReleaseBuffer(simxChar* buffer);
simxInt simxTransferFile(const simxChar* filePathAndName,const simxChar* fileName_serverSide,simxInt timeOut,simxInt operationMode);
simxInt simxEraseFile(const simxChar* fileName_serverSide,simxInt operationMode);
