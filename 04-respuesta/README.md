# 4. RESPUESTA Y RECUPERACIÓN

**Estado:** teoría resumida aprobada; prácticas y evidencias pendientes.

## 4.1. Procedimiento de actuación

Una vez detectado el incidente en TecnoGestión S. L., debemos actuar rápidamente para detener el ataque y recuperar los sistemas afectados.

Seguiremos estas fases:

| Fase | Actuación |
|---|---|
| 1. Aislamiento | Desconectar de la red los equipos infectados para evitar que el ataque se propague. |
| 2. Bloqueo de conexiones | Bloquear las IP y dominios maliciosos mediante el firewall. |
| 3. Revocación de credenciales | Cambiar las contraseñas comprometidas y cerrar las sesiones sospechosas. |
| 4. Eliminación de la amenaza | Eliminar el malware y sus mecanismos de persistencia o reinstalar los equipos afectados. |
| 5. Recuperación | Restaurar archivos y sistemas utilizando copias de seguridad seguras. |
| 6. Prevención | Aplicar mejoras de seguridad para evitar nuevos ataques. |

Antes de eliminar el malware, debemos conservar las evidencias necesarias para la investigación.

## 4.2. Aislamiento de los equipos afectados

El primer paso será aislar los ordenadores sospechosos para impedir que el atacante siga comunicándose con ellos.

Para ello:

- Desconectaremos los equipos de la red.
- Evitaremos que accedan a carpetas compartidas.
- Informaremos al departamento de informática.
- Conservaremos los registros y las evidencias.

No apagaremos los equipos sin valorar antes si podemos perder información importante para la investigación.

## 4.3. Bloqueo de conexiones maliciosas

Utilizaremos el firewall para bloquear las comunicaciones con direcciones IP y dominios identificados como maliciosos.

También revisaremos las conexiones activas para comprobar si continúa existiendo actividad sospechosa.

En las prácticas utilizaremos el Firewall de Windows y PowerShell en una máquina virtual.

## 4.4. Revocación de credenciales comprometidas

Si sospechamos que el atacante ha conseguido contraseñas, aplicaremos las siguientes medidas:

- Cambiar las contraseñas comprometidas.
- Cerrar las sesiones sospechosas.
- Revocar los accesos que puedan estar comprometidos.
- Activar la autenticación multifactor (MFA).
- Revisar los permisos de los usuarios.

## 4.5. Eliminación y recuperación

Una vez conservadas las evidencias necesarias y contenido el ataque, procederemos a eliminar la amenaza.

Para ello:

1. Identificaremos los archivos y procesos maliciosos.
2. Eliminaremos el malware o reinstalaremos los sistemas cuando sea necesario.
3. Instalaremos las actualizaciones de seguridad.
4. Restauraremos la información desde copias de seguridad verificadas.
5. Comprobaremos que los equipos funcionan correctamente antes de volver a conectarlos a la red.

La recuperación se realizará de forma controlada para evitar que el incidente vuelva a producirse.

## 4.6. Ciberresiliencia

La ciberresiliencia es la capacidad de una empresa para prepararse, resistir, recuperarse y mejorar después de un incidente de seguridad.

Se basa en cuatro principios:

| Principio | Aplicación en la empresa |
|---|---|
| **Anticipación** | Formar empleados, actualizar equipos y realizar copias de seguridad. |
| **Resistencia** | Utilizar antivirus, firewall, MFA y control de accesos para limitar el ataque. |
| **Recuperación** | Restaurar los sistemas y servicios de forma segura. |
| **Evolución** | Analizar lo ocurrido y mejorar las medidas de seguridad. |

## 4.7. Conclusión

La respuesta y recuperación permiten detener el ataque, eliminar las amenazas y recuperar el funcionamiento de la empresa.

En TecnoGestión S. L. aplicaremos medidas de aislamiento, bloqueo de conexiones, protección de credenciales y restauración de sistemas.

Además, utilizaremos los principios de ciberresiliencia para reducir las consecuencias de futuros incidentes.

---

**Prácticas pendientes:** aislamiento de una máquina virtual, bloqueo de conexiones con el Firewall de Windows, comprobación de las reglas aplicadas y simulación de recuperación segura.
