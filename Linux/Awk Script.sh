#!/bin/sh

cat $1_Dealer_schedule | grep _Dealer_FNAME

cat $1_Dealer_schedule| awk '{print $1, $2, $3, $4, $5, $6, $7, $8}' |grep $2 | grep $3


echo *'Please note on specfic day, these dealers were working and working during these 3 particular games at given time/date.'*


echo *'Please note AM/PM is capital and is case sensitve.'*

