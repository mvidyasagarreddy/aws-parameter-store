resource "aws_ssm_parameter" "params" {
  name  = "foo"
  type  = "String"
  value = "bar"
}

variable "params" {
    default = [
        {name = "demo1",value = "demo1",type = "String"}
        {name = "demo2",value = "demo2",type = "String"}
    ]
}