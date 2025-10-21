## 📦 Entregables de la Prueba Técnica

Todo el trabajo debe publicarse en un repositorio público (GitHub o GitLab), listo para ser desplegado desde cero utilizando **Terraform**.
Se asume que los permisos de la cuenta ya están habilitados para el despliegue.

---

### 1️⃣ Infraestructura como Código (IaC)

Código **Terraform** que despliegue todos los recursos necesarios para ejecutar el flujo completo, incluyendo:

* Espacio de almacenamiento para los datos de entrada y salida.
* Definición del catálogo o esquema de metadatos.
* Componentes que permitan la lectura, transformación y consulta de los datos.
* Configuración de los mecanismos de control de acceso.

El código debe ser **modular**, **parametrizable** y **reproducible**.

---

### 2️⃣ Pruebas y Documentación

El repositorio debe incluir un archivo **README.md** (este) con instrucciones claras para levantar y probar el entorno desde cero.
Se valorará especialmente la presencia de los siguientes apartados:

#### a. Requisitos previos

* Versión mínima de Terraform.
* Dependencias necesarias.
* Variables requeridas (por ejemplo: región, entorno, nombre de proyecto).

#### b. Configuración

Ejemplo de archivo `terraform.tfvars`:

```hcl
region        = "us-west-2"
environment   = "dev"
project_name  = "lakehouse-challenge"
```

#### c. Despliegue

```bash
terraform init
terraform apply
```

#### d. Ejecución de las pruebas

1. Colocar el archivo CSV en el espacio de entrada definido.
2. Ejecutar el flujo para generar el esquema y transformar los datos.
3. Consultar los resultados desde la consola interactiva.
4. Verificar que el control de acceso se haya aplicado correctamente.

#### e. Limpieza del entorno

```bash
terraform destroy
```

#### f. Explicación del flujo

Incluir un resumen de cómo se conectan los componentes del proceso:
desde la detección del archivo, la creación del esquema, la transformación a formato columnar, hasta la disponibilidad para consulta y control de acceso.
