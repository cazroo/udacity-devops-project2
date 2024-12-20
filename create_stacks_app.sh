#!/bin/bash

# Create the Udagram application stack
aws cloudformation create-stack \
  --stack-name UdagramAppStack \
  --template-body file://udagram.yml \
  --parameters file://udagram-params.json \
  --capabilities CAPABILITY_NAMED_IAM

# Check if the stack creation was successful
if [ $? -ne 0 ]; then
  echo "Failed to create UdagramAppStack"
  exit 1
fi

echo "App created successfully!"
