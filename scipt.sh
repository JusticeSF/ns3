#! /usr/bin/env bash

dbs=4.5
x=0.5
for distance in {40..160..2}
do
dbs=$(bc<<<"scale=3;$dbs+$x")
./ns3 run "adhoc --distance=$distance --dbs=$dbs"
done
