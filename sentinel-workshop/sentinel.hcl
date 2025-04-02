// filename: sentinel.hcl
policy "hello" {
  source            = "./hello.sentinel"
  enforcement_level = "advisory"
}
