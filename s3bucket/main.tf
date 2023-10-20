resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_versioning" "versioning_bucket" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_s3_bucket_object" "index" {
  bucket = aws_s3_bucket.bucket.id
  key    = "index.html"
  source = var.path
  etag   = filebase64sha256("index.html")
}

resource "aws_s3_bucket_object" "script" {
  bucket = aws_s3_bucket.bucket.id
  key    = "script.js"
  source = var.script_path
  etag   = filebase64sha256("script.js")
}

resource "aws_s3_bucket_object" "style" {
  bucket = aws_s3_bucket.bucket.id
  key    = "style.css"
  source = var.style_path
  etag   = filebase64sha256("style.css")
}
