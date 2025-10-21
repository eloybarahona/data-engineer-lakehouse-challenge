########################################
# Proyecto: Lakehouse Challenge
# Descripción:
#   Infraestructura base para desplegar el caso de uso
#   de procesamiento y consulta de un archivo CSV.
########################################

terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

########################################
# Variables
########################################

variable "region" {
  description = "Región donde se desplegarán los recursos."
  type        = string
  default     = "us-west-2"
}

variable "environment" {
  description = "Nombre del entorno (ej. dev, test, prod)."
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Nombre base del proyecto o dataset."
  type        = string
  default     = "lakehouse-challenge"
}

########################################
# Módulos / Recursos principales
# (El candidato debe completar esta sección)
########################################

# Ejemplo: almacenamiento para los archivos fuente y transformados
# module "storage" {
#   source = "./modules/storage"
#   environment = var.environment
#   project_name = var.project_name
# }

# Ejemplo: catálogo de metadatos
# module "catalog" {
#   source = "./modules/catalog"
#   project_name = var.project_name
# }

########################################
# Salidas
########################################

output "project_info" {
  description = "Información general del despliegue"
  value = {
    region        = var.region
    environment   = var.environment
    project_name  = var.project_name
  }
}
