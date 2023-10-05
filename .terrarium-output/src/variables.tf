variable "vpc_config" {
  description = "A map of objects that define the VPC to create."
  type        = any
  default = {
    "default" = {
      "vpc_cidr_block" = "10.0.0.0/16",
      "number_of_azs"  = 2
    }
  }

}

variable "lb_config" {
  description = "A map of objects that define the LB to create."
  type        = any
  default = {
    "default" = {
      "load_balancer_type" = "application",
      "create_alb"         = true
    }
  }
}

variable "common_name_prefix" {
  description = "The common name prefix to use for all resources."
  type        = string
  default     = "terrarium"
}

variable "environment" {
  description = "The environment to deploy to."
  type        = string
  default     = "testing"
}

variable "ecs_config" {
  description = "A map of objects that define the ECS cluster to create."
  type        = any
  default = {
    "default" : {
      name : "default",
      engine : {
        type : "FARGATE",
        default_weight : 50,
        spot_weight : 50,
      }
    }
  }
}

























variable "domain_name" {
  description = "The DNS zone domain name to create records in."
  type        = string
  default     = "platform.test.codepipes.io"
}

variable "zone_id" {
  description = "The DNS zone ID to create records in."
  type        = string
  default     = "placeholder"
}
