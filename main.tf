resource "aws_ssm_parameter" "param" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
}

variable "params" {
  default = [
    {name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.roboshopai.online:8080/", type = "String"},
    {name = "roboshop.dev.frontend.user_url", value = "http://user-dev.roboshopai.online:8080/", type = "String"},
    {name = "roboshop.dev.frontend.cart_url", value = "http:/cart-dev.roboshopai.online:8080/", type = "String"},
    {name = "roboshop.dev.frontend.payment_url", value = "http://payment-dev.roboshopai.online:8080/", type = "String"},
    {name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.roboshopai.online:8080/", type = "String"},

    {name = "roboshop.dev.cart.redis_host", value = "redis-dev.roboshopai.online", type = "String"},
    {name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.roboshopai.online", type = "String"},
    {name = "roboshop.dev.cart.catalogue_port", value = "8080", type = "String"},

    {name = "roboshop.dev.catalogue.mongo", value = "catalogue-dev.roboshopai.online", type = "String"},
    {name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://mongodb-dev.roboshopai.online:27017/catalogue", type = "String"},

    {name = "roboshop.dev.payment.cart_host", value = "cart-dev.roboshopai.online", type = "String"},
    {name = "roboshop.dev.payment.cart_port", value = "8080", type = "String"},
    {name = "roboshop.dev.payment.user_host", value = "user-dev.roboshopai.online", type = "String"},
    {name = "roboshop.dev.payment.user_port", value = "8080", type = "String"},
    {name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.roboshopai.online", type = "String"},
    {name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String"},
    {name = "roboshop.dev.shipping.cart_endpoint", value = "cart-dev.roboshopai.online:8080", type = "String"},
    {name = "roboshop.dev.shipping.db_host", value = "mysql-dev.roboshopai.online", type = "String"},
    {name = "roboshop.dev.user.mongo", value = "true", type = "String"},
    {name = "roboshop.dev.user.redis_host", value = "redis-{{env}}.roboshopai.online", type = "String"},
    {name = "roboshop.dev.user.mongo_url", value = "mongodb://mongodb-{{env}}.roboshopai.online:27017/users", type = "String"},


    ### Passwords are never stored as part of git repos. These will provisioned by those who have access in param store.
    {name = "roboshop.dev.payment.amqp_pass", value = "roboshop123", type = "SecureString"},





  ]
}