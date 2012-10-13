// Make sure to have the server side running in V-REP!
// Start the server from a child script with following command:
// simExtRemoteApiStart(portNumber) -- starts a remote API server service on the specified port

import std.stdio;
import std.conv;
import std.string;
import extApi;
import extApiPlatform;

int main(string argv[])
{
  int portNb = 0;
  int leftMotorHandle;
  int rightMotorHandle;
  int sensorHandle;

  if (argv.length >= 2) {
    portNb = to!int(argv[1]);
  }
  else
  {
    writefln("Indicate following arguments: 'portNumber'!");
    extApi_sleepMs(5000);

    return 0;
  }

  if (simxStart("127.0.0.1", portNb, true, true, 2000) != -1) {
    int driveBackStartTime =- 99000;
    float motorSpeeds[2];
  
    simxGetObjectHandle("sensingNose", &sensorHandle, simx_opmode_oneshot_wait);
    simxGetObjectHandle("leftMotor", &leftMotorHandle, simx_opmode_oneshot_wait);
    simxGetObjectHandle("rightMotor", &rightMotorHandle, simx_opmode_oneshot_wait);

    writeln("sensorHandle: ", sensorHandle, ", leftMotorHandle: ", leftMotorHandle, ", rightMotorHandle: ", rightMotorHandle);

    while (simxGetConnectionId() !=- 1) {
      char sensorTrigger = 0;

      if (simxReadProximitySensor(sensorHandle, &sensorTrigger, null, null, null, simx_opmode_continuous) == simx_error_noerror) {
        // We succeeded at reading the proximity sensor
        int simulationTime = simxGetLastCmdTime();

        if (simulationTime - driveBackStartTime < 3000) {
          // driving backwards while slightly turning:
          motorSpeeds[0] =- 3.1415f * 0.5f;
          motorSpeeds[1] =- 3.1415f * 0.25f;
        }
        else {
          // going forward:
          motorSpeeds[0] = 3.1415f;
          motorSpeeds[1] = 3.1415f;

          if (sensorTrigger) {
            writeln("Detect");
            driveBackStartTime = simulationTime; // We detected something, and start the backward mode
          }
        }

        simxSetJointTargetVelocity(leftMotorHandle, motorSpeeds[0], simx_opmode_oneshot);			
        simxSetJointTargetVelocity(rightMotorHandle, motorSpeeds[1], simx_opmode_oneshot);			
      }

      extApi_sleepMs(5);
    }

    simxFinish();
  }

  return 0;
}

