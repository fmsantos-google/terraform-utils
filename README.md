# Terraform Utils

It's a set of terraform scripts to help on boilerplate work.

## List of scripts

* [sandbox](./sandbox)
  * Creates a folder called sandbox, change a set of [organization policies](./sandbox/locals.tf) 
to the default state (Google managed), creates a new project on the sandbox folder
and enables some [APIs](./sandbox/locals.tf).