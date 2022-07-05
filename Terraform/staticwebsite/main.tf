resource "aws_s3_bucket" "static" {
    bucket = var.bucket_name
    tags = {
        Name = "StaticWeb Site"
    }
    policy = templatefile("./templates/s3-policy.json", { bucket = "${var.bucket_name}" })

}

resource "aws_s3_bucket_acl" "static_acl" {
  bucket = aws_s3_bucket.static.id
  acl    = "public-read"
}



resource "aws_s3_bucket_website_configuration" "static" {
    bucket = aws_s3_bucket.static.bucket

    index_document {
    suffix = "index.html"
  }
}

output "srorage_arn" {
    value = aws_s3_bucket.static.arn
}

output "website_domain" {
    value = aws_s3_bucket_website_configuration.static.website_domain
}

output "website_endpoint" {
    value = aws_s3_bucket_website_configuration.static.website_endpoint
}