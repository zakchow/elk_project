#!/bin/sh

awk '{print $1, $2, $5, $6}' $3_Dealer_schedule | grep $1 | grep $2
echo Given a specfic date for the 3rd passing arugment will be able to detertermine which employees were working at future dates. Time is 1st arug
echo Please note AM/PM is case sensitive for passing 2nd arugment.
