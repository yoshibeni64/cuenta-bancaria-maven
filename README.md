# Cuenta bancaria — Maven

**Autor:** José Rodrigo Benítez Rivera

## Cómo construir y correr

```
./mvnw clean package
java -jar target/cuenta-bancaria-maven-1.0.0.jar
```

## Qué hay en este proyecto

| Qué                                               | Dónde                                       |
| ------------------------------------------------- | ------------------------------------------- |
| El programa (estado de cuenta en texto y en JSON) | `src/main/java/com/academia/banco/App.java` |
| Las pruebas                                       | `src/test/java/com/academia/banco/`         |
| La evidencia de cada mini-práctica                | `evidencia/`                                |
| Los 5 errores de Maven que encontré               | `evidencia/errores-maven.md`                |

## Boleto de salida

### 1. ¿Qué diferencia hay entre `./mvnw package` y `./mvnw install`?

./mvnw package compila, ejecuta las pruebas y crea el archivo .jar en la carpeta target/.

./mvnw install hace todo lo anterior y además instala el archivo .jar en el repositorio local de Maven para poder usarlo con otros proyectos.

### 2. ¿Por qué `compile` pasó pero `java -jar` falló en la MP-3?

El comando compile pasó porque Maven tenía las dependencias necesarias para compilar el código.

Pero el archivo .jar normal no incluía las dependencias externas, como Jackson. Por eso java -jar no podía encontrar las clases de Jackson. Se solucionó creando un .jar con las dependencias usando el plugin Shade.

### 3. En tu proyecto de Spring Boot, ¿de dónde sale la versión de una dependencia que no tiene `<version>`?

La versión sale del spring-boot-starter-parent, que administra las versiones de las dependencias mediante dependencyManagement. Por eso algunas dependencias pueden no tener <version> escrita directamente en el archivo pom.xml.

### 4. ¿Qué va en `settings.xml` y no en `pom.xml`? ¿Por qué?

En settings.xml van configuraciones específicas de mi computadora, como credenciales o configuraciones de repositorios.

No van en pom.xml porque este pertenece al proyecto y se comparte mediante Git, mientras que settings.xml contiene configuraciones personales o del entorno local que no se verán en Git.
