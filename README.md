# 🧩 Lakehouse Challenge

## 📖 Caso de Uso

Procesar un archivo **CSV** que llega a un sistema de almacenamiento, de modo que:

* Pueda ser consultado desde una consola interactiva.
* Se genere automáticamente el esquema a partir de su estructura.
* Se transforme el CSV a un formato columnar eficiente (por ejemplo, Parquet), valorando opciones que soporten versionado o actualizaciones (principalmente Hudi).
* Se apliquen mecanismos de control de acceso a nivel de datos.

**Opcionalmente:**

* El proceso pueda repetirse de forma automatizada ante nuevas cargas.
* Se mantenga trazabilidad del origen, fecha y estado de la transformación.
* Se documente el flujo y las decisiones técnicas.

---

### 3️⃣ Criterios de Evaluación

* Diseño reproducible y limpio.
* Código Terraform modular y parametrizado.
* Claridad en el flujo de procesamiento.
* Correcta transformación y registro del esquema.
* Documentación completa y entendible.
* Control de acceso bien implementado y explicado.

---

## 🧩 Material de apoyo incluido

Este repositorio contiene un conjunto mínimo de archivos de ejemplo:

```
lakehouse-challenge/
├── README.md                # Este documento
├── examples/
│   ├── dataset_sample.csv   # CSV de ejemplo
│   └── dataset_config.yaml  # Configuración de muestra
├── iac/
│   └── main.tf              # Plantilla base de Terraform
└── docs/
    └── instrucciones_base.md
```

---

## 📬 Entrega

1. Publica tu solución en un repositorio público con el nombre **lakehouse-challenge** (o equivalente).
2. Incluye todas las carpetas necesarias (`iac/`, `src/`, `docs/`, `examples/`).
3. En el `README.md` explica los pasos para desplegar y ejecutar la prueba.
4. Envía el enlace del repositorio junto con una breve descripción de tu enfoque técnico.
