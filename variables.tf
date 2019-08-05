variable "application_name" {
  type        = string
  default     = ''
  description = "Name of the application"
}

variable "env_vars" {
  type        = map(string)
  default     = {}
  description = 'Environment variables map. e.g. {"NODE_ENV": "DEVELOPMENT"}'
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

