# Install modularized AWS.Tools module

Install-Module -Name AWS.Tools.Installer -Force

Install-AWSToolsModule AWS.Tools.EC2, AWS.Tools.S3, AWS.Tools.IdentityManagement

## Get signed in

Set-AWSCredential `
  -AccessKey  `
  -SecretKey  `
  -StoreAs TimProfile

Initialize-AWSDefaultConfiguration -ProfileName TimProfile -Region us-east-2

## Use the services

New-S3Bucket -BucketName website-example -Region us-west-2

Get-S3BucketLocation -BucketName website-example

Remove-S3Bucket -BucketName website-example

New-EC2Instance -ImageId ami-c49c0dac `
    -MinCount 1 `
    -MaxCount 1 `
    -KeyName myPSKeyPair `
    -SecurityGroups myPSSecurityGroup `
    -InstanceType t1.micro
