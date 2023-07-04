#!/usr/bin/env bash
#Script created to launch Jmeter tests directly from the current terminal without accessing the jmeter master pod.
#It requires that you supply the path to the jmx file
#After execution, test script jmx file may be deleted from the pod itself but not locally.


#Get Master pod details

#master_pod=`kubectl get pod -n loadtesting | grep jmeter-master | awk '{print $1}'`

master_pod=`oc get pod  | grep jmeter-master | grep Running | awk '{print $1}'`

oc cp $master_pod:/tmp/test.csv test.csv
