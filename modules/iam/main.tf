############################
# IAM Role
############################
resource "aws_iam_role" "this" {
  name               = var.role_name
  assume_role_policy = var.assume_role_policy
  tags               = var.tags
}

############################
# IAM Policies (Multiple)
############################
resource "aws_iam_policy" "this" {
  for_each    = { for p in var.policies : p.name => p }
  name        = each.value.name
  description = lookup(each.value, "description", "")
  policy      = each.value.document
  tags        = var.tags
}

############################
# Attach Each Policy to Role
############################
resource "aws_iam_role_policy_attachment" "attachments" {
  for_each   = aws_iam_policy.this
  role       = aws_iam_role.this.name
  policy_arn = each.value.arn
}