# JRE 11 Runtime Comparision

## Compare JRE 11 Runtimes for Start-Up Time, Runtime Performance and Steady State Resource Utilisation
The following Runtimes are compared
1. Adopt JDK - OpenJ9
2. Adopt JDK - HostSpot
3. OpenJDK
4. Distroless JRE
5. AWS - Amazoncorretto
6. Adopt JDK - OpenJ9 - With ClassSharing
7. Same as 6

## Image Sizes
![Image Sizes](images/imageSizesNew.png?raw=true "Image Sizes")

## Start-up Times
Note: Take the start-up times with a pinch of salt as it was on my MAC which had Kube, Monitoring Stack (Promeetheus, Cadvisor, Grafana, Alert Manager, NodeExporter) and  Docker Swarm running during the test.
![Start-Up Times](images/startUpTimesNew.png?raw=true "Start-up Times")

## Tests
1. Run without ClassSharing for OpenJ9 - Notice Decrease in Memory and CPU. But spike in CPU consumption on boot-up.
2. Run with ClassSharing for OpenJ9 - Notice Improvement in Boot Time and Increase in Memory Consumption but Drop in CPU Utilisation dues to Optimisation loaded into memory.

## Run with ClassSharing for OpenJ9
### BootUp
![Boot Up](images/classSharingBootUp.png?raw=true "ClassSharing BootUp")

### During Test
![During Test](images/classSharingRun.png?raw=true "ClassSharing During Test")

### Post Test
![Boot Up](images/classSharingPostRun.png?raw=true "ClassSharing Post Test")

### Class Cache Size
![Boot Up](images/classCacheSize.png?raw=true "ClassCache Size")


## Run without ClassSharing for OpenJ9

### Run #1 and Steady State

#### Run #1
![1st Run](images/1-Test.png?raw=true "1st Run")

#### Run #1 - Post Test
![1st Run Post Test](images/1-PostTest.png?raw=true "1st Run Post test")


### Run #2 and Steady State

#### Run #2
![2nd Run](images/2-Test.png?raw=true "2nd Run")

#### Run #2 - Post Test
![2nd Run Post Test](images/2-PostTest.png?raw=true "2nd Run Post test")


