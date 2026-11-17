# 3. INVESTIGACIÓN Y ANÁLISIS

**Estado:** teoría resumida aprobada. Prácticas, evidencias y fuentes pendientes.

## 3.1. Recopilación de evidencias

El objetivo es investigar cómo se produjo el ataque, qué sistemas están afectados y si se han robado datos.

Para ello, recopilaremos las siguientes evidencias:

| Evidencia | Qué investigaremos |
|---|---|
| Correo electrónico | Remitente, enlaces y archivo adjunto. |
| Archivo malicioso | Nombre, tipo y comportamiento sospechoso. |
| Registros de Windows | Inicios de sesión, errores y actividad del sistema. |
| Procesos | Programas que se están ejecutando. |
| Conexiones de red | IP y puertos utilizados. |
| Antivirus | Alertas y amenazas detectadas. |
| Carpetas compartidas | Posibles accesos no autorizados. |

Utilizaremos principalmente **PowerShell y el Visor de eventos de Windows** para obtener información.

## 3.2. Preservación de las evidencias

Es importante conservar las pruebas sin modificarlas para que puedan utilizarse durante la investigación.

Para ello seguiremos estas medidas:

1. Registrar la fecha, hora y origen de cada evidencia.
2. Guardar copias en una ubicación segura.
3. Evitar modificar los archivos originales.
4. Calcular el hash SHA-256 para comprobar su integridad.
5. Permitir el acceso únicamente a las personas autorizadas.

## 3.3. Investigación del correo y archivo malicioso

El ataque comenzó cuando un empleado recibió un correo falso de Recursos Humanos y ejecutó un archivo adjunto.

Investigaremos:

- **Remitente:** comprobar si la dirección es legítima.
- **Asunto:** identificar mensajes engañosos o urgentes.
- **Enlaces:** revisar si llevan a páginas sospechosas.
- **Adjunto:** analizar el nombre, extensión y hash del archivo.
- **Antivirus:** consultar si detectó alguna amenaza.

El archivo se analizará de forma segura, sin ejecutar malware real en nuestros equipos.

## 3.4. Análisis de conexiones sospechosas

El departamento de informática ha detectado conexiones con direcciones IP externas.

Para investigarlas, utilizaremos PowerShell y herramientas de análisis de red.

Comprobaremos:

- Direcciones IP de destino.
- Puertos utilizados.
- Procesos relacionados con las conexiones.
- Fechas y horas de la actividad.
- Posibles conexiones con servidores maliciosos.

También podremos utilizar VirusTotal o AbuseIPDB para consultar información pública sobre las IP sospechosas.

## 3.5. Cadena de custodia

La cadena de custodia es el registro que permite saber **quién ha recogido, utilizado o trasladado una evidencia, cuándo lo ha hecho y cómo se ha protegido**.

Para documentarla utilizaremos una tabla:

| Campo | Información que registraremos |
|---|---|
| Identificador | Código de la evidencia. |
| Descripción | Archivo, registro o captura. |
| Fecha y hora | Momento de la recogida. |
| Responsable | Persona que recoge la evidencia. |
| Hash SHA-256 | Huella digital del archivo. |
| Ubicación | Lugar donde se almacena. |
| Transferencias | Quién recibe la evidencia y cuándo. |

De esta forma podremos demostrar que las pruebas se han conservado correctamente.

## 3.6. Cálculo del hash SHA-256

El **SHA-256** es una función hash que genera una huella digital de un archivo.

Permite comprobar si el contenido ha cambiado durante la investigación.

Para calcularlo utilizaremos PowerShell:

```powershell
Get-FileHash -Path "C:\Evidencias\archivo.txt" -Algorithm SHA256
```

El comando mostrará el hash SHA-256 del archivo seleccionado.

Volveremos a calcularlo posteriormente. Si ambos resultados coinciden, podremos comprobar que el contenido no ha cambiado.

El resultado real y su captura se añadirán cuando realicemos la práctica.

## 3.7. Conclusión

La investigación permite conocer cómo comenzó el ataque, qué equipos pueden estar afectados y qué actividad sospechosa se ha producido.

Mediante PowerShell, los registros de Windows y el análisis de evidencias podremos investigar el incidente de TecnoGestión S. L.

También utilizaremos hashes SHA-256 y una cadena de custodia para proteger las pruebas obtenidas.

---

**Prácticas pendientes:** recopilación de evidencias con PowerShell, análisis de registros, cálculo de SHA-256 y documentación de la cadena de custodia.
