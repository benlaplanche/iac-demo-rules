package rules

deny[msg] {
	resource := input.resource.aws_s3_bucket[name]
	not resource.tags
	msg := {
		# Mandatory fields
		"publicId": "BEN_TF_1",
		"title": "S3 buckets must be tagged with an owner",
		"severity": "critical",
		"msg": sprintf("input.resource.aws_s3_bucket[%s].tags", [name]),
		# Optional fields
		"issue": "The S3 bucket is not tagged with any owners metadata",
		"impact": "If buckets are not correctly tagged, we do not know who to contact for any security issues",
		"remediation": "Add a `tags` property to your s3 bucket",
		"references": [],
	}
}
