resource "heroku_app" "production" {
  name   = "${var.application_name}-prod"
  region = var.region

  config_vars = var.production_vars
  buildpacks  = var.buildpacks
}

resource "heroku_app" "staging" {
  name   = "${var.application_name}-stage"
  region = var.region

  config_vars = var.staging_vars
  buildpacks  = var.buildpacks
}

resource "heroku_app" "development" {
  name   = "${var.application_name}-dev"
  region = var.region

  config_vars = var.development_vars
  buildpacks  = var.buildpacks
}
