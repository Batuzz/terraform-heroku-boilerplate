variable "application_name" {
  type        = string
  description = "Name of the application"
}

variable "production_vars" {
  type        = map(string)
  default     = {}
  description = "Environment variables for production environment. e.g. {'NODE_ENV': 'DEVELOPMENT'}"
}

variable "staging_vars" {
  type        = map(string)
  default     = {}
  description = "Environment variables for staging environment. e.g. {'NODE_ENV': 'DEVELOPMENT'}"
}

variable "development_vars" {
  type        = map(string)
  default     = {}
  description = "Environment variables for development environment. e.g. {'NODE_ENV': 'DEVELOPMENT'}"
}

variable "region" {
  type        = string
  default     = "eu"
  description = "Region where your Heroku application will be hosted."
}

variable "buildpacks" {
  type        = list(string)
  default     = []
  description = "Buildpack for your applications. e.g. ['heroku/nodejs']"
}

