#!/bin/bash
USER_NAME="home"
GROUP_NAME="members"
if ! aws iam get-user --user-name $USER_NAME > /dev/null 2>&1; then 
  aws iam create-user --user-name $USER_NAME
fi

if ! aws iam get-group --group-name $GROUP_NAME > /dev/null 2>&1; then
  aws iam create-group --group-name $GROUP_NAME
fi


if ! aws iam get-group --group-name $GROUP_NAME | grep -w $USER_NAME > /dev/null 2>&1; then
   aws iam add-user-to-group --user-name $USER_NAME --group-name $GROUP_NAME 
fi

