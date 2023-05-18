Versioned terraform modules and terratest unit tests (/test), examples (/examples), and github actions (/.github/workflows). 

Sample usage
==============
```
module "ssl-certificate" {
  source      = "git::https://github.com/jessegersensonchess/terraform.git//modules/management/certificates?ref=v0.0.72"
  domain-name = var.domain-name
}
```
