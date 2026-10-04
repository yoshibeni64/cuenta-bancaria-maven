# Errores de Maven que encontré

| Queja | La línea clave que dijo Maven | La causa | Cómo lo arreglé |
|---|---|---|---|
| 1 | `end tag name </dependencia> must match start tag name <dependency>` — línea 29 | La etiqueta de cierre de `dependency` estaba mal escrita | Cambié `</dependencia>` por `</dependency>` |
| 2 | `Fatal error compiling: error: release version 21 not supported` | El POM intentaba compilar con Java 21, pero el JDK disponible no soportaba `release 21` | Cambié `maven.compiler.release` de `21` a `17` |
| 3 | `Could not find artifact ... jackson-databind:jar:2.22.30 in central` | La versión de Jackson `2.22.30` no existía | Cambié `jackson.version` de `2.22.30` a `2.22.3` |
| 4 | `package com.fasterxml.jackson.core does not exist` | Jackson tenía `scope=test`, por lo que no estaba disponible para el código principal | Eliminé `<scope>test</scope>` de Jackson |
| 5 | `Could not find or load main class com.academia.banco.Aplicacion` | El `Main-Class` apuntaba a una clase que no existe | Cambié `Aplicacion` por `App` |
