schema "example" {}

table "users" {
  schema = schema.example
  column "id" {
    null = false
    type = int
  }
  column "name" {
    null = true
    type = varchar(100)
  }
  column "email" {
    type = varchar(255)
  }
  index "email_unique" {
    columns = [column.email]
    unique = true
  }
  primary_key {
    columns = [column.id]
  }
}

table "orders" {
  schema = schema.example
  column "id" {
    type = int
  }
  column "user_id" {
    type = int
  }
  column "total" {
    type = decimal
  }
  foreign_key "user_orders" {
    columns = [column.user_id]
    ref_columns = [table.users.column.id]
  }
  primary_key {
    columns = [column.id]
  }
}
