# 2. DETECCIÓN Y AUDITORÍA

**Estado:** teoría resumida aprobada; prácticas, evidencias y fuentes pendientes.

## 2.1. Clasificación del incidente y gravedad

La empresa TecnoGestión S. L. ha sufrido un ataque de phishing. Un trabajador abrió un archivo malicioso recibido por correo electrónico.

Después se detectaron conexiones sospechosas, alertas del antivirus e intentos de acceso a carpetas compartidas.

**Clasificación del incidente:**

| Tipo | Descripción |
|---|---|
| Phishing | Correo falso que suplanta a Recursos Humanos. |
| Malware | Ejecución de un archivo malicioso. |
| Acceso no autorizado | Intentos de acceder a carpetas compartidas. |
| Posible fuga de datos | Sospecha de extracción de información de clientes. |

**Gravedad propuesta: Alta**, porque pueden estar comprometidos los equipos y los datos de la empresa.

La gravedad definitiva dependerá de los resultados de la investigación.

## 2.2. Sistemas y servicios afectados

Los principales sistemas que podrían estar afectados son:

- **Ordenadores:** equipo del empleado que ejecutó el archivo malicioso y posibles equipos adicionales.
- **Correo electrónico:** utilizado para distribuir el phishing.
- **Servidor de archivos:** posibles intentos de acceso a carpetas compartidas.
- **Red empresarial:** conexiones sospechosas con IP externas.
- **Base de datos:** posible exposición de información de clientes.

Todavía debemos investigar qué sistemas están realmente comprometidos.

## 2.3. Herramientas de detección y monitorización

Utilizaremos diferentes herramientas para investigar el incidente.

| Herramienta | Utilidad |
|---|---|
| Windows Defender | Detectar archivos y programas maliciosos. |
| Visor de eventos | Consultar los registros de Windows. |
| PowerShell | Revisar procesos, conexiones y servicios. |
| Wireshark | Analizar el tráfico de red. |
| Firewall | Revisar y controlar conexiones. |
| VirusTotal | Consultar información de archivos, IP y dominios sospechosos. |

También existen sistemas SIEM, IDS, IPS y EDR que permiten detectar y supervisar amenazas en una empresa.

## 2.4. Registros que debemos consultar

Para saber qué ha ocurrido, revisaremos los siguientes registros:

| Registro | Qué buscamos |
|---|---|
| Antivirus | Alertas y detecciones de malware. |
| Firewall | Conexiones permitidas o bloqueadas. |
| Windows | Inicios de sesión, errores y ejecución de procesos, si están registrados. |
| Red | Conexiones con direcciones IP desconocidas. |
| Correo | Remitente, destinatarios, enlaces y archivos adjuntos. |

Estos registros nos ayudarán a reconstruir el incidente y conocer qué actividad se ha producido.

## 2.5. Investigación mediante OSINT

OSINT consiste en recopilar información utilizando fuentes públicas.

En nuestro incidente investigaremos las direcciones IP y los dominios sospechosos para comprobar si están relacionados con actividades maliciosas.

**Herramientas propuestas:**

- **VirusTotal:** consultar informes sobre archivos, IP y dominios.
- **Shodan:** obtener información pública sobre sistemas y servicios expuestos.
- **WHOIS/RDAP:** consultar datos públicos de registro de dominios.
- **AbuseIPDB:** consultar reportes de actividad sospechosa asociados a direcciones IP.

Los resultados de estas páginas son indicios y deben comprobarse con otras evidencias.

## 2.6. Ficha de registro del incidente

Para documentar correctamente el incidente, crearemos una ficha con la información conocida.

| Campo | Información |
|---|---|
| Identificador | INC-2026-001 |
| Empresa | TecnoGestión S. L. |
| Tipo de ataque | Phishing con ejecución de malware |
| Gravedad inicial | Alta (provisional) |
| Origen aparente | Correo falso de Recursos Humanos |
| Equipo afectado | Ordenador de un empleado |
| Actividad detectada | Conexiones externas y accesos sospechosos |
| Posible consecuencia | Exposición de datos de clientes |
| Estado | Pendiente de investigación y confirmación |

La fecha, las direcciones IP y las evidencias obtenidas se añadirán cuando realicemos las pruebas prácticas.

## 2.7. Conclusión

La detección y la auditoría permiten identificar actividades sospechosas y conocer el alcance de un incidente.

En TecnoGestión S. L. utilizaremos el antivirus, los registros de Windows, PowerShell y herramientas de análisis de red para investigar lo ocurrido.

Toda la información obtenida servirá para continuar con el apartado 3: Investigación y análisis.

---

## Prácticas y fuentes pendientes

- [ ] Consultar eventos relevantes en el Visor de eventos de Windows y guardar capturas.
- [ ] Revisar conexiones TCP con PowerShell mediante `Get-NetTCPConnection`.
- [ ] Consultar indicadores seguros o de prueba mediante OSINT y documentar resultados.
- [ ] Añadir fuentes de los apuntes originales del profesor y documentación de las herramientas.

> No se han realizado todavía estas pruebas ni se han obtenido evidencias reales.
