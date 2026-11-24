# 2. DETECCIÓN Y AUDITORÍA

**Estado:** teoría desarrollada, cinco evidencias prácticas documentadas y ejercicio OSINT de demostración documentado.

## 2.1. Clasificación del incidente y gravedad

La empresa Daniel Company ha sufrido un ataque de phishing. Un trabajador abrió un archivo malicioso recibido por correo electrónico.

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

### Por qué la gravedad inicial es alta

El problema no se limita a un correo extraño: el archivo llegó a ejecutarse y después aparecieron alertas y conexiones sospechosas. Además, hay indicios de intentos de acceso a archivos compartidos y una posible exposición de datos personales.

La prioridad es averiguar si el malware sigue activo, si otras cuentas han sido utilizadas y si hubo extracción real de información. La clasificación se actualizará cuando tengamos evidencias.

## 2.2. Sistemas y servicios afectados

Los principales sistemas que podrían estar afectados son:

- **Ordenadores:** equipo del empleado que ejecutó el archivo malicioso y posibles equipos adicionales.
- **Correo electrónico:** utilizado para distribuir el phishing.
- **Servidor de archivos:** posibles intentos de acceso a carpetas compartidas.
- **Red empresarial:** conexiones sospechosas con IP externas.
- **Base de datos:** posible exposición de información de clientes.

Todavía debemos investigar qué sistemas están realmente comprometidos.

### Orden de revisión de los sistemas

Primero analizaremos el ordenador del empleado que abrió el adjunto. Después comprobaremos su cuenta de correo, las conexiones que realizó y si se intentó acceder al servidor de archivos.

También revisaremos otros equipos relacionados con las mismas alertas. La base de datos de clientes será prioritaria por el posible impacto sobre la información personal, pero **no afirmaremos que esté afectada sin pruebas**.

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

### Para qué sirve cada tipo de herramienta

**Defender** puede mostrar detecciones o archivos puestos en cuarentena. **PowerShell** nos permite consultar información del propio equipo. **Wireshark** ayuda a observar paquetes de red capturados de forma autorizada.

En una empresa grande podrían usarse herramientas más completas: un **SIEM** reúne registros de varios sistemas, un **IDS** alerta sobre actividad sospechosa, un **IPS** puede bloquearla y un **EDR** ayuda a investigar y responder desde los equipos.

Para nuestro laboratorio comenzaremos con las herramientas de Windows que ya hemos estudiado, antes de añadir programas más complejos.

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

### Qué preguntas responderemos con los registros

Queremos saber **qué ocurrió, cuándo ocurrió y desde qué equipo**. Compararemos la hora del correo con la ejecución del archivo, las alertas del antivirus y las conexiones detectadas.

Un registro aislado no demuestra necesariamente un ataque. Por ejemplo, conectarse a una IP externa es normal en muchos programas. Será sospechoso si coincide con otros indicios, como un proceso desconocido o una detección del antivirus.

## 2.5. Investigación mediante OSINT

OSINT consiste en recopilar información utilizando fuentes públicas.

En nuestro incidente investigaremos las direcciones IP y los dominios sospechosos para comprobar si están relacionados con actividades maliciosas.

**Herramientas propuestas:**

- **VirusTotal:** consultar informes sobre archivos, IP y dominios.
- **Shodan:** obtener información pública sobre sistemas y servicios expuestos.
- **WHOIS/RDAP:** consultar datos públicos de registro de dominios.
- **AbuseIPDB:** consultar reportes de actividad sospechosa asociados a direcciones IP.

Los resultados de estas páginas son indicios y deben comprobarse con otras evidencias.

### Procedimiento de consulta

Cuando encontremos una IP o un dominio de interés, anotaremos el indicador y consultaremos distintas fuentes públicas. Revisaremos si existen reportes anteriores y guardaremos fecha, enlace y resultado.

**Precaución:** no subiremos documentos privados ni archivos internos a servicios públicos de análisis. Tampoco consideraremos una IP maliciosa únicamente porque aparezca reportada una vez; los resultados deben contrastarse.

## 2.6. Ficha de registro del incidente

Para documentar correctamente el incidente, crearemos una ficha con la información conocida.

| Campo | Información |
|---|---|
| Identificador | INC-2026-001 |
| Empresa | Daniel Company |
| Tipo de ataque | Phishing con ejecución de malware |
| Gravedad inicial | Alta (provisional) |
| Origen aparente | Correo falso de Recursos Humanos |
| Equipo afectado | Ordenador de un empleado |
| Actividad detectada | Conexiones externas y accesos sospechosos |
| Posible consecuencia | Exposición de datos de clientes |
| Estado | Pendiente de investigación y confirmación |

La fecha real de detección del incidente ficticio y las IP sospechosas no están especificadas en el enunciado. No se inventan. Las pruebas del laboratorio se documentan más abajo, separadas del caso empresarial.

### Cómo actualizaremos la ficha

A medida que investiguemos añadiremos la fecha de detección, responsables, equipos analizados, indicadores encontrados, decisiones adoptadas y evidencias asociadas.

Se distinguirá entre **hechos observados** (por ejemplo, una alerta registrada), **indicios** (una conexión potencialmente sospechosa) y **datos sin confirmar** (una posible fuga). Esto ayudará a justificar las decisiones del siguiente apartado.

## 2.7. Ejemplo de investigación OSINT aplicado al caso ficticio

En la práctica de Shodan consultamos la IP pública `1.1.1.1`. Esta es una dirección conocida de Cloudflare y **no es un indicador de ataque** de Daniel Company. La captura [P2_03_Shodan.png](../evidencias/P2_03_Shodan.png) demuestra que conocemos la herramienta, pero no sirve para confirmar el origen de una infección.

### Ejemplo guiado con indicadores ficticios

Para representar cómo investigaríamos los indicadores de un correo sospechoso podemos utilizar estas direcciones **reservadas para documentación**:

| Indicador ficticio | Qué revisaríamos | Precaución |
|---|---|---|
| IP `203.0.113.10` | Si aparece en registros de conexión, a qué hora, desde qué proceso y con qué puerto. | Es una IP de ejemplo, no un servidor malicioso real. |
| Dominio `nominas-verificacion.example` | Si el correo lo menciona, qué dirección mostraría el enlace y si existe una suplantación del remitente. | `.example` es un dominio reservado para ejemplos; no representa una campaña real. |

**Procedimiento que seguiríamos con indicadores reales obtenidos de registros autorizados:**

1. Registrar la IP o el dominio, la fecha, la fuente y el equipo donde apareció.
2. Relacionar la IP con el proceso local y la hora de la conexión.
3. Consultar fuentes públicas (por ejemplo, Shodan, RDAP, VirusTotal o AbuseIPDB) sin subir documentos privados.
4. Comparar los resultados de OSINT con el antivirus, los eventos y las conexiones internas.
5. Clasificar el indicador como confirmado, sospechoso o no concluyente, explicando por qué.

**Resultado del ejercicio:** hemos practicado la consulta pública y descrito el método de comprobación. No tenemos una IP o un dominio malicioso extraído del caso real que permita atribuir el ataque. Por ello **no afirmamos que exista una conexión del laboratorio con la IP de ejemplo**.

### Cómo se conectan las capturas de detección con el análisis

| Captura | Qué demuestra realmente | Qué comprobaríamos en una investigación |
|---|---|---|
| [P2_01](../evidencias/P2_01_EventosWindows.png) | Consulta de eventos de Windows. | Correlación con la hora de ejecución y las alertas. |
| [P2_02](../evidencias/P2_02_Conexiones.png) | Listado de conexiones TCP observadas. | Destino externo, proceso asociado y actividad anómala. |
| [P2_03](../evidencias/P2_03_Shodan.png) | Consulta OSINT de una IP pública de demostración. | Reputación e información pública de un indicador realmente detectado. |
| [P2_04](../evidencias/P2_04_AngryIPScanner.png) | Descubrimiento de equipos activos en una red de laboratorio autorizada. | Identificar equipos que requieren revisión. |
| [P2_05](../evidencias/P2_05_WaybackMachine.png) | Consulta histórica de una web. | Comparar cambios de páginas, si fuera relevante para el incidente. |


---

## Evidencias prácticas realizadas en el laboratorio

Las siguientes pruebas se realizaron en máquinas de laboratorio. Las capturas documentan los resultados observados; **no demuestran que se ejecutara malware real ni confirman una fuga de datos**.

### Registros de Windows

**Herramienta o comando:** `Get-EventLog -LogName System -Newest 20`.

**Resultado:** Se consultaron 20 eventos del sistema; se observaron eventos de servicios y errores de instalación. No prueban un ataque.

![Registros de Windows](../evidencias/P2_01_EventosWindows.png)

*Evidencia: [P2_01_EventosWindows.png](../evidencias/P2_01_EventosWindows.png)*.

### Conexiones TCP del equipo

**Herramienta o comando:** `Get-NetTCPConnection`.

**Resultado:** Se mostraron conexiones establecidas con puertos y procesos; en la captura solo se aprecian direcciones locales y de enlace local.

![Conexiones TCP del equipo](../evidencias/P2_02_Conexiones.png)

*Evidencia: [P2_02_Conexiones.png](../evidencias/P2_02_Conexiones.png)*.

### OSINT con Shodan

**Herramienta o comando:** `Shodan: 1.1.1.1`.

**Resultado:** Se consultaron puertos y metadatos públicos de una IP conocida, sin relación demostrada con el incidente ficticio.

![OSINT con Shodan](../evidencias/P2_03_Shodan.png)

*Evidencia: [P2_03_Shodan.png](../evidencias/P2_03_Shodan.png)*.

### Descubrimiento de equipos

**Herramienta o comando:** `Angry IP Scanner`.

**Resultado:** En la red de laboratorio 10.10.10.1–10.10.10.30 se comprobaron 30 IP y se encontraron 3 activas: 10.10.10.1, 10.10.10.10 y 10.10.10.20.

![Descubrimiento de equipos](../evidencias/P2_04_AngryIPScanner.png)

*Evidencia: [P2_04_AngryIPScanner.png](../evidencias/P2_04_AngryIPScanner.png)*.

### Consulta de una web archivada

**Herramienta o comando:** `Wayback Machine`.

**Resultado:** Se visualizó una copia histórica de incibe.es fechada el 17/02/2020. Es una práctica de búsqueda histórica.

![Consulta de una web archivada](../evidencias/P2_05_WaybackMachine.png)

*Evidencia: [P2_05_WaybackMachine.png](../evidencias/P2_05_WaybackMachine.png)*.


## Revisión para la entrega

Las cinco capturas ya están incorporadas. Las referencias y los materiales del profesor deben mantenerse en la documentación de GitHub.

**Referencias de herramientas:** [Microsoft Learn — Get-NetTCPConnection](https://learn.microsoft.com/en-us/powershell/module/nettcpip/get-nettcpconnection), [Shodan](https://www.shodan.io/), [IANA — dominios reservados](https://www.iana.org/domains/reserved).

## 2.8. Práctica adicional: captura de tráfico con Wireshark

**Objetivo:** observar tráfico de red generado en una máquina virtual Windows para distinguir protocolos, direcciones IP y posibles anomalías. Se utilizó Wireshark sobre la interfaz `Ethernet 2`.

**Procedimiento realizado:**

1. Se seleccionó `Ethernet 2` en Wireshark.
2. Se inició la captura durante una navegación web de prueba.
3. Se detuvo la captura y se revisaron las columnas *Source*, *Destination*, *Protocol*, *Length* e *Info*.
4. Se guardó localmente el archivo `Captura_Trafico_Laboratorio.pcapng`, que **no se sube** al repositorio para no publicar datos de las conexiones.

**Resultado observado:** aparecen paquetes TCP, TLS, QUIC, mDNS y STP. La IP local `192.168.210.163` participa en varias comunicaciones; se observan retransmisiones TCP y cierres de sesión. **Una retransmisión no demuestra un ataque:** también puede aparecer por condiciones normales de la red.

**Evidencia:** `P2_06_Wireshark.png` (captura del laboratorio subida a `evidencias/`).

![Captura general de Wireshark](../evidencias/P2_06_Wireshark.png)

**Relación con el caso:** en un incidente real compararíamos las conexiones observadas con la hora de la alerta, el proceso responsable, las IP de destino y otros registros. Esta captura es exclusivamente de laboratorio.

## 2.9. Conclusión

La detección y la auditoría permiten identificar actividades sospechosas y conocer el alcance de un incidente.

En Daniel Company utilizaremos el antivirus, los registros de Windows, PowerShell y herramientas de análisis de red para investigar lo ocurrido.

Toda la información obtenida servirá para continuar con el apartado 3: Investigación y análisis.
