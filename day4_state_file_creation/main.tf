resource "aws_s3_bucket" "lkcfgdhenntunnxnnxfjjfjriiymmyut" {
  bucket = "defgthyjujujuyefef"
  
}
 #resource "aws_s3_bucket_acl" "test" {
    #bucket = aws.s3.bucket.remote.id
    #acl = "private"}
resource "aws_s3_bucket_versioning" "versioning-name" {
  bucket = aws_s3_bucket.lkcfgdhenntunnxnnxfjjfjriiymmyut.id
  versioning_configuration {
    status = "Enabled"
  }
}