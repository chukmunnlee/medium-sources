replicas: 4

setWeight - %
sets the % of traffic routed to the canary. If you set it to 25, then 1 canary instance will  
be deployed

setCanaryScale
increases the number of pod instances. If setCanaryScale is 50%, then 2 can instances will 
be deployed

If you have setWeight and setCanaryScale, then the % of traffic router to the number of instance
eg
- setCanaryScale: 
		weight: 50%
- setWeight: 25

50% of the traffic will be routed to 1 instance of the canary. Ordering is important

