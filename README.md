# CD12352 - Infrastructure as Code Project Solution

## Caroline Rooney

### Spin up instructions

Ensure you have the AWS CLI installed and configured with your credentials and default region.

#### Run the Network Stack Creation:
    The first step is to set up the network infrastructure. To do this, run the create_stacks_network.sh script:

    " ./create_stacks_network.sh "

    This will create the VPC, subnets, NAT gateways, and route tables defined in the network.yml template.

#### Run the Application Stack Creation:
    Once the network stack is successfully created, proceed with the application stack setup by running the create_stacks_app.sh script:


    " ./create_stacks_app.sh "

    This will create the application load balancer, security groups, and EC2 instances for your Udagram application using the udagram.yml template.

Both scripts will indicate if the stack creation was successful. Ensure there are no errors in the logs.

### Tear down instructions

#### Delete the Application Stack:
    To delete the application stack, use the delete_app.sh script:

    " ./delete_app.sh "

    This will remove all application-related resources like the EC2 instances and application load balancer.

#### Delete the Network Stack:
    After the application stack is deleted, you can tear down the network infrastructure by running:


    " ./delete_network.sh "

    This will delete the VPC, subnets, NAT gateways, and route tables defined for the network.

After the deletion scripts run, check the AWS CloudFormation console to confirm that the stacks are deleted.
