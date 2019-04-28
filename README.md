# selenium-grid-fargate
A scalable yet disposable Selenium Grid for large-scale testing. Built using AWS ECS-Fargate.

### To use this template -

1. Log into your AWS account
2. Go to Services > CloudFormation
3. Click CreateStack
4. Upload the CloudFormation template provided here (either json or yaml). Click Next.
5. Provide a name for your stack. Modify **ContainerCpu, ContainerMemory** and **SeleniumImageVersion** as desired. If you're using this for the first time, it is recommended to work with defaults. Click Next twice, and check the box to 'I acknowledge that AWS CloudFormation might create IAM resources.' Click Create.

Stack should be created in a few minutes. You should be able to access the Selenium Grid on **ExternalUrl:4444** in the Outputs section of the created stack.


![external url for loadbalancer](images/external-url.png)


### Implementation based on sample templates issued by AWS - 

- https://github.com/awslabs/aws-cloudformation-templates/tree/master/aws/services/ECS
- Blog post: https://aws.amazon.com/blogs/compute/task-networking-in-aws-fargate/

**DO NOT FORGET** to delete your stack when not in use, else you would end up incurring charges for idle resources.
