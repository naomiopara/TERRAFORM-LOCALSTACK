variable "aws_region"  {
    description =  "AWS Region"
    type        =   string 
    default     =   "us-east-1"

}

variable "ami_id"  {
    description =  "AMI ID FOR EC2 instance"
    type        =  string 
    default     = "ami-12345678"


}

variable "instance_type"  {
    description  = "EC2 Instance Type"
    type         =    string 
    default      =    "t2.micro"

    
}

variable "instance_name"  {
    description = "EC2 Instance Name"
    type        =  string
    default     =  "terrform-ec2"
}