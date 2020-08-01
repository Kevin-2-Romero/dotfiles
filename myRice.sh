#!/bin/bash
# Install the programs on main desktop as well as configuration files

for P in $(cat packages.txt)
do
	echo $P
done
