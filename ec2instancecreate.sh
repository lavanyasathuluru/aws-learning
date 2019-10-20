#!/bin/bash
AMI="0b69ea66ff7391e80" 
SUBNET_ID="1f5a6243"
if aws ec2 run-instance --image-id $AMI --count 1 --instance-type t2.micro $SUBNET_ID
    aws ec2 run-instance --image-id $AMI --count 1 --instance-type t2.micro $SUBNET_ID 
fi
