# Azure - AWS Course TOC

## DAY 1

### General Comparison

* service comparison website
* free tiers / cloud sandboxes
* management tools
* sdks and tools

### Storage

* blob storage
* databases






## DAY 2

### Compute / Networking

* networking / vNets / VPc
  * Use CloudFormation/VS CODE
  * New VPC with one public subnet
  * Internet gateway attached to subnet
  * Route table 0.0.0.0/0 to gateway
* VMs
  * Windows EC2
  * Load balancer
  * Containers
* app service / beanstalk
* container instances
* Lambda function test
* Template Deployment
  * Create/modify S3/EC2 stacks

### Identity and Security

* Create S3 bucket and copy out name
* IAM policy
  * create users
  * IAM > Policies > S3, all actions, all resources
  * New Group > S3 users , attach policy
* Roles
  * Create role for my user ID ; attach S3 policy
  * User menu > switch role
* Hybrid / SSO
  * AADC
  * Enterprise Apps SSO

### Monitoring

* Cloudwatch
  * Billing alarm
  * Dashboards, EC2 instance metrics CPUUtil widget
  * Log insights query language

### Pricing, Governance, Compliance

* Cost Explorer
