locals {
  production_vars   = merge(var.env_vars, {
    "NODE_ENV": "production",
  })

  staging_vars  = merge(var.env_vars, {
    "NODE_ENV": "staging",
  })

  development_vars = merge(var.env_vars, {
    "NODE_ENV": "development",
  })
}
