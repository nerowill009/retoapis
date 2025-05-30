# Automatización QA - BackEnd con Karate DSL

Reto de automatizacion de apis usando **Karate DSL**. Apuntando a la API de Usuarios de [ServeRest](https://serverest.dev/).

---

## 🧰 Requisitos

- Java 8 o superior
- Maven
- Karate DSL
- Conexión a la API de usuarios de ServeRest

---

## 🚀 Instalación

### 1. Clonar el repositorio

``bash
git clone https://github.com/nerowill009/retoapis.git
``bash

ESTRUCTURA DEL PROYECTO

retoapis/
├── src/
│   └── test/
│       └── java/
│           └── REST/
│               ├── user-delete.feature     # Prueba para eliminar un usuario
│               ├── user-get.feature        # Prueba para listar todos los usuarios
│               ├── user-getID.feature      # Prueba para buscar un usuario por ID
│               ├── user-post.feature       # Prueba para registrar un nuevo usuario
│               └── user-put.feature        # Prueba para actualizar los datos de un usuario
│           └── karateRunner.java           # Clase para ejecutar las pruebas


✅ Validaciones de las Pruebas
Cada prueba automatizada verifica que:

Las respuestas tengan el formato correcto (JSON).

El código de estado HTTP sea el esperado.

Los datos retornados contengan los valores correctos.

🧪 Ejecución de las Pruebas

Karate.run("classpath:REST"): Ejecuta todos los archivos .feature dentro de la carpeta REST.

Para ejecutar un archivo en específico, por ejemplo user-get.feature, cambia la línea por:
return Karate.run("classpath:REST/user-get.feature");
