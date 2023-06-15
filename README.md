# jmeter-openshift
Apache Jmeter cluster setup on OpenShift to run distributed load testing.

Forked from https://github.com/kubernauts/jmeter-kubernetes, made changes to make it work with OpenShift v4.

## Prerequisites
* Running OpenShift cluster (tested on v4.5)
* a jmx file to load into the Jmeter cluster

## Warnings
* make sure you're logged in to your OpenShift cluster on your terminal before proceeding
* when running grafana, make sure to change the time range on the left of the UI or change it directly from the template

## To Run
```
./jmeter_cluster_create.sh
```
```
./dashboard.sh
```
```
./start_test.sh
```
