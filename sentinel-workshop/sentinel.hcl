// filename: sentinel.hcl
policy "hello" {
  source            = "./hello.sentinel"
  enforcement_level = "advisory"
}

policy "imports" {
  source            = "./imports.sentinel"
  enforcement_level = "advisory"
}
