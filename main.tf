resource "heroku_app" "production" {
  name   = "${var.application_name}-prod"
  region = var.region

  config_vars = local.production_vars
  buildpacks  = var.buildpacks
}

resource "heroku_app" "staging" {
  name   = "${var.application_name}-stage"
  region = var.region

  config_vars = local.staging_vars
  buildpacks  = var.buildpacks
}

resource "heroku_app" "development" {
  name   = "${var.application_name}-dev"
  region = var.region

  config_vars = local.development_vars
  buildpacks  = var.buildpacks
}
