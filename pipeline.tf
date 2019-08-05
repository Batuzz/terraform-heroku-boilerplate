resource "heroku_pipeline" "default" {
  name = "${var.application_name}-pipeline"
  depends_on = [heroku_app.production, heroku_app.staging, heroku_app.development]
}

resource "heroku_pipeline_coupling" "production" {
  app       = heroku_app.production.name
  pipeline  = heroku_pipeline.default.id
  stage     = "production"
  depends_on = [heroku_pipeline.default]
}

resource "heroku_pipeline_coupling" "staging" {
  app       = heroku_app.staging.name
  pipeline  = heroku_pipeline.default.id
  stage     = "staging"
  depends_on = [heroku_pipeline.default]
}

resource "heroku_pipeline_coupling" "development" {
  app       = heroku_app.development.name
  pipeline  = heroku_pipeline.default.id
  stage     = "development"
  depends_on = [heroku_pipeline.default]
}
