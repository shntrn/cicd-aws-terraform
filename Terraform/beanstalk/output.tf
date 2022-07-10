output "beanstalk_endpoint" {
    value = aws_elastic_beanstalk_environment.backend_env.endpoint_url
}