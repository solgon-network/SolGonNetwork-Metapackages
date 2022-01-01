#!/bin/bash

read -s "New Project Name: " projectName
clear
mkdir $projectName
echo "Created new directory - $projectName"
