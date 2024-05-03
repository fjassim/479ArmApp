int highThresholdA = 80;  // Max activity value for Sensor A //sensor A is flex sensor
int lowThresholdA = 30;   // Minimal activity value for Sensor A

// Thresholds for Sensor B
int highThresholdB = 960;  // Max activity value for Sensor B //zensor be is muscle sensor
int lowThresholdB = 950;   // Minimal activity value for Sensor B

// Variables to track the state of each sensor
boolean isHighA = false;
boolean isLowA = true;  // Assuming it starts in a low state


boolean isHighB = false;
boolean isLowB = true;  // Assuming it starts in a low state
int maxReachedA = 0;  // To track the peak value reached in the current cycle for Sensor A
int partialThresholdA = 70;  // Define the partial threshold

// For user alert
boolean needsToReachFullA = false;

void updateSensorValues(int currentValueA, int currentValueB) {
    // Check transitions for Sensor A
    boolean cycleA=false;
    boolean cycleB=false;
    boolean partialCycleA= false;
     if (!isLowA && currentValueA > maxReachedA) {
        maxReachedA = currentValueA;
    }

    // Check transitions for Sensor A
    if (isLowA && currentValueA >= highThresholdA) {
        // Transition from low to high (full cycle)
        isLowA = false;
        isHighA = true;
        needsToReachFullA = false; // Reset this flag since it's a full cycle
        maxReachedA = currentValueA;  // Reset max for new cycle
    } else if (isHighA && currentValueA <= lowThresholdA) {
        // Transition from high to low (end of cycle)
        isHighA = false;
        isLowA = true;
        if (maxReachedA >= highThresholdA) {
            cycleA= true;  // Complete full cycle
        } else if (maxReachedA >= partialThresholdA && maxReachedA < highThresholdA) {
            partialCycleA= true;  // Record a partial cycle\
            println("partial");
        }
        maxReachedA = 0;  // Reset for next cycle
    } else if (isLowA && currentValueA >= partialThresholdA && currentValueA < highThresholdA) {
        // Handling case where it reaches only partial before going down
        needsToReachFullA = true;
    }

    // Check transitions for Sensor B
    if (isLowB && currentValueB >= highThresholdB) {
        // Transition from low to high
        isLowB = false;
        isHighB = true;
    } else if (isHighB && currentValueB <= lowThresholdB) {
        // Transition from high to low
        isHighB = false;
        isLowB = true;
        //cyclesB++;  // Complete cycle detected
        cycleB= true;
    }
    if (partialCycleA){
      ourOracle.setstatus(2) ;
    }
    
    if (cycleA){
      reps++;
    }
    
}
