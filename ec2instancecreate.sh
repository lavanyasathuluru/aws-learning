#!/bin/bash
AMI="ami-xxxxxxxx"
SUBNET_ID="subnet-xxxxxxxxx"
COUNT=1
  aws ec2 run-instances --image-id $AMI --count $COUNT --instance-type t2.micro --subnet-id $SUBNET_ID 

