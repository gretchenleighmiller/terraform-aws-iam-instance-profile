# --- IAM Role ----------------------------------------------------------------
data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "role" {
  name        = local.snake_case_name
  path        = "/"
  description = "${var.name} Instance Profile Role"

  assume_role_policy = (
    var.create_assume_role_policy ?
    data.aws_iam_policy_document.assume_role_policy.json :
    var.assume_role_policy_json
  )
}

resource "aws_iam_role_policy_attachment" "policy_attachment" {
  for_each = { for policy in var.policies : policy.name => policy }

  role       = aws_iam_role.role.name
  policy_arn = each.value.arn
}

# --- IAM Instance Profile ----------------------------------------------------
resource "aws_iam_instance_profile" "instance_profile" {
  name = "${local.snake_case_name}_instance_profile"
  path = "/"
  role = aws_iam_role.role.name
}
