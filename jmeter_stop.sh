#!/usr/bin/env bash
#Script writtent to stop a running jmeter master test
#Kindly ensure you have the necessary kubeconfig

working_dir=`pwd`

#Get namesapce variable
tenant=`awk '{print $NF}' $working_dir/tenant_export`

master_pod=`oc get pod | grep jmeter-master | awk '{print $1}'`

oc exec -ti $master_pod -- /bin/bash /jmeter/apache-jmeter-5.0/bin/stoptest.sh
