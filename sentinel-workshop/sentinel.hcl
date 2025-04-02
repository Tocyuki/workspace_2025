// filename: sentinel.hcl
policy "hello" {
  source            = "./hello.sentinel"
  enforcement_level = "advisory"
}

policy "imports" {
  source            = "./imports.sentinel"
  enforcement_level = "advisory"
}

// filename: sentinel.hcl
# allowed_list はポリシー側で参照する際に必要な識別子となる
import "static" "allowed_list" {
  source = "./imports/allowed_host_list.json"
  format = "json"
}

// time プラグインは、デフォルトで UTC を表示する（これを JST にオーバライドする例）
import "plugin" "time" {
  config = {
    "timezone": "Asia/Tokyo"
  }
}
