# 5. NOTIFICACIÓN Y ORGANISMOS DE RESPUESTA

**Estado:** teoría y simulación documental completadas. Las notificaciones son modelos académicos; no se ha producido una comunicación real.

## 5.1. Comunicación interna del incidente

Cuando se detecta un ataque, es importante informar a los trabajadores para evitar que se propague.

**Modelo de comunicado interno:**

**Asunto: Aviso de seguridad informática**

Se ha detectado un incidente de ciberseguridad relacionado con un correo electrónico falso de Recursos Humanos.

Por precaución, se solicita a todos los empleados:

- No abrir correos ni archivos sospechosos.
- Comunicar cualquier actividad extraña a informática.
- No compartir información sobre el incidente con personas no autorizadas.
- Seguir las instrucciones del departamento de informática.

El equipo de ciberseguridad está investigando lo ocurrido y aplicando las medidas necesarias.

### Qué datos debe contener el aviso interno

El mensaje tendrá un lenguaje claro y explicará qué se ha detectado, qué se debe evitar y cómo comunicar nuevas señales. Se indicará el canal oficial de informática y, si existe, una persona responsable de coordinar los avisos.

No compartiremos por correo masivo contraseñas, datos de clientes ni detalles técnicos que puedan facilitar nuevos ataques. Cuando haya información confirmada, se comunicarán las novedades relevantes.

## 5.2. Notificación a la AEPD

La **Agencia Española de Protección de Datos (AEPD)** es el organismo encargado de supervisar el cumplimiento de la normativa de protección de datos.

Según el Reglamento General de Protección de Datos (RGPD):

- Si se produce una brecha de datos personales que pueda suponer un riesgo para las personas, deberá notificarse a la autoridad competente, generalmente en un máximo de **72 horas desde que se tenga constancia de ella**.
- Si existe un riesgo alto para las personas afectadas, también habrá que informarles sin demora injustificada.
- Todas las brechas deberán quedar documentadas, aunque no sea obligatorio notificarlas.

En Daniel Company investigaremos si realmente se han visto comprometidos datos de clientes y evaluaremos la obligación de notificar el incidente.

### Cómo valorar la posible brecha de datos

En nuestro escenario todavía **no está confirmado** que los datos de los clientes hayan salido de la empresa. Investigaremos qué carpetas y sistemas contienen datos personales, qué cuentas accedieron y si existen evidencias de copia o envío.

Si se confirma una brecha, evaluaremos sus consecuencias para las personas: cantidad y tipo de datos, posibilidad de identificación, riesgo de fraude y medidas de protección existentes.

La decisión sobre notificación deberá documentarse, junto con la fecha en la que la empresa tuvo constancia de la brecha. El plazo general de 72 horas se refiere a la comunicación a la autoridad cuando exista obligación, y no debe confundirse con un plazo para terminar toda la investigación.

## 5.3. Organismos CERT y CSIRT

Los **CERT y CSIRT** son equipos especializados en prevenir, analizar y responder a incidentes de ciberseguridad.

Sus principales funciones son:

- Detectar amenazas informáticas.
- Analizar incidentes de seguridad.
- Ayudar a contener los ataques.
- Publicar alertas y recomendaciones.
- Colaborar con otras organizaciones.

### Cuándo pediríamos ayuda

Si el equipo interno no consigue identificar o contener la amenaza, podrá solicitar orientación a un equipo de respuesta apropiado. Para facilitar la ayuda, se preparará un resumen del incidente: fecha, sistemas afectados, alertas, acciones realizadas e indicadores investigados.

Es importante no enviar información personal innecesaria ni compartir muestras peligrosas por canales no autorizados.

## 5.4. Equipos de respuesta en España

| Organismo | Función |
|---|---|
| **INCIBE-CERT** | Ayuda a ciudadanos y entidades privadas a gestionar incidentes de ciberseguridad. |
| **CCN-CERT** | Se especializa en la prevención y respuesta a incidentes del sector público español. |

**INCIBE-CERT** sería el organismo de referencia para Daniel Company al tratarse de una empresa privada.

El CCN-CERT es otro equipo nacional importante, aunque está orientado principalmente al sector público.

### Qué organismo encaja mejor con el caso

Daniel Company es una empresa privada, por lo que **INCIBE-CERT** encaja mejor como punto de apoyo ante el incidente. **CCN-CERT** nos sirve como segundo ejemplo de equipo de respuesta español y para explicar cómo se organiza la respuesta en el ámbito público.

La ayuda técnica de un CERT/CSIRT es distinta de la obligación legal de notificar una brecha de datos personales a la autoridad de protección de datos.

## 5.5. Evaluación práctica simulada de una posible brecha de datos

**Caso:** INC-2026-001. En Daniel Company, una persona abrió un adjunto que parecía enviado por Recursos Humanos. Después aparecieron conexiones externas sospechosas e intentos de acceso a carpetas compartidas. **No se ha demostrado que se hayan consultado ni extraído datos personales de clientes.**

### 5.5.1. Registro de evaluación inicial

| Pregunta | Resultado del caso |
|---|---|
| ¿Ha habido un incidente informático? | Sí, según el escenario del ejercicio. |
| ¿Se ha confirmado una brecha de datos personales? | No; está pendiente de investigar. |
| ¿Qué datos podrían estar afectados? | Datos de clientes almacenados en carpetas compartidas; el tipo y cantidad no se conocen. |
| ¿Hay pruebas de extracción de datos? | No se aportan pruebas concluyentes. |
| ¿Hay que avisar ahora a la AEPD? | No se puede decidir únicamente con estos datos; hay que investigar rápidamente y evaluar el riesgo si se constata una brecha. |
| ¿Hay que informar ahora a todos los clientes? | Tampoco puede afirmarse: dependerá de que exista una brecha con alto riesgo para ellos. |
| ¿Quién decide? | La dirección o responsable del tratamiento, con el apoyo del equipo de seguridad y del delegado de protección de datos, si existe. |

**Comprobaciones necesarias para tomar la decisión:**

1. Revisar registros de acceso a las carpetas compartidas y cuentas utilizadas.
2. Analizar las conexiones salientes, sus destinos, horarios y volumen de datos.
3. Identificar qué datos personales podían ser accesibles desde el equipo afectado.
4. Comprobar posibles copias, descargas o transferencias no autorizadas.
5. Registrar cuándo se conoce la existencia de una posible brecha y las pruebas que la sustentan.
6. Valorar los riesgos para las personas y documentar la decisión, aunque no se llegue a notificar.

Las capturas de nuestras prácticas con Shodan, escaneo de red y conexiones del laboratorio **no prueban una extracción de datos** en Daniel Company.

### 5.5.2. Tabla de decisiones

| Resultado de la investigación | Actuación |
|---|---|
| Solo hay sospechas y no se ha confirmado una brecha de datos personales. | Investigar con prioridad; no presentar la sospecha como filtración demostrada. |
| Se confirma una brecha y es improbable que suponga un riesgo para las personas. | Documentarla; en principio no es obligatoria la notificación a la AEPD. |
| Se confirma una brecha con riesgo para los derechos y libertades de las personas. | Notificar a la autoridad competente sin dilación indebida y, cuando sea posible, dentro de 72 horas desde que se tiene constancia de la brecha. |
| Se confirma una brecha que probablemente suponga un riesgo alto. | Además de la notificación a la autoridad cuando corresponda, comunicarla a las personas afectadas sin dilación indebida, salvo las excepciones legales aplicables. |

El plazo legal no comienza automáticamente cuando llega el correo fraudulento: se relaciona con el momento en que el responsable tiene constancia de la brecha de datos personales. Si faltan detalles, pueden facilitarse posteriormente de forma escalonada según el RGPD.

### 5.5.3. Modelo de registro de decisión — simulación

- **Incidente:** INC-2026-001.
- **Empresa:** Daniel Company (ficticia).
- **Situación:** posible acceso no autorizado a datos personales.
- **Evidencias disponibles:** descripción ficticia del ataque y pruebas técnicas realizadas en un laboratorio independiente.
- **Evidencias que faltan:** registros que demuestren qué datos fueron consultados o extraídos.
- **Decisión actual:** investigación abierta en el escenario; todavía no es posible determinar si existe una brecha notificable.
- **Acción inmediata propuesta:** conservar registros, contener el acceso sospechoso, analizar los datos potencialmente afectados y documentar la fecha de conocimiento.
- **Responsable de la decisión:** responsable del tratamiento, con apoyo técnico y jurídico.

**Importante:** esta ficha es un modelo académico, no una decisión legal emitida por una empresa real.

## 5.6. Modelos de comunicación

### 5.6.1. Comunicación interna a los empleados — simulación

**Asunto: Aviso preventivo de seguridad — INC-2026-001**

Se ha detectado una actividad sospechosa relacionada con un correo que parece proceder de Recursos Humanos. Estamos revisando los equipos y los accesos a carpetas de la empresa.

Pedimos a los empleados que no abran archivos inesperados, que comuniquen cualquier mensaje sospechoso al departamento de informática por los canales habituales y que sigan las instrucciones del equipo técnico.

Todavía no hemos confirmado una filtración de datos personales. Informaremos de las novedades cuando dispongamos de resultados comprobados.

**Equipo de respuesta de Daniel Company**

### 5.6.2. Borrador orientativo para la AEPD — usar solo si procede

**Tipo de documento:** plantilla académica, **NO ENVIADA**.

- **Responsable del tratamiento:** Daniel Company (empresa ficticia).
- **Referencia interna:** INC-2026-001.
- **Descripción preliminar:** incidente iniciado mediante un correo de suplantación de Recursos Humanos y ejecución de un archivo sospechoso.
- **Categorías de personas y datos afectados:** pendientes de determinar.
- **Número aproximado de afectados y registros:** pendiente de determinar.
- **Consecuencias posibles:** acceso no autorizado o exposición de datos, sujetos a confirmación.
- **Medidas de contención y respuesta propuestas:** aislamiento del equipo, conservación de registros, análisis de accesos y restablecimiento seguro.
- **Fecha y hora de conocimiento de la brecha:** no se inventa; se registrará si llega a constatarse.
- **Persona o canal de contacto:** pendiente de designación por la organización.

**Este borrador no es una notificación válida ni debe presentarse con campos sin comprobar.** Si la investigación determinara que hay una brecha notificable, el responsable completaría los datos y utilizaría el procedimiento oficial.

### 5.6.3. Comunicación a clientes — únicamente si se cumplen las condiciones legales

**Asunto: Información importante sobre la seguridad de sus datos**

Le informamos de que hemos detectado un incidente de seguridad que podría haber afectado a información personal. La naturaleza de los datos y las consecuencias se comunicarían con precisión una vez verificadas.

Estamos aplicando medidas de contención y revisión de nuestros sistemas. También ofreceríamos un canal oficial de contacto y recomendaciones concretas para reducir posibles riesgos.

**Nota:** este texto es una plantilla académica; su envío se valoraría solo si se confirmara una brecha que requiriese informar a los afectados.

## 5.7. Ayuda de INCIBE-CERT y diferencias con la AEPD

En este caso, **INCIBE-CERT** puede servir de apoyo técnico para investigar y contener el ataque. **La AEPD**, en cambio, es la autoridad competente en protección de datos a la que se notificaría una brecha cuando corresponda. Acudir a INCIBE-CERT no sustituye una posible obligación legal de notificación.

En una consulta técnica se facilitarían: resumen del incidente, momento de detección, sistemas afectados, indicadores observados y medidas realizadas, sin enviar datos personales innecesarios.

### Fuentes oficiales consultadas para esta práctica

- [AEPD: qué es una brecha de datos personales](https://www.aepd.es/preguntas-frecuentes/2-tus-obligaciones-como-responsable-del-tratamiento/11-brechas-de-datos-personales/FAQ-0232-que-es-una-violacion-de-seguridad-de-los-datos-brecha-de-datos-personales).
- [AEPD: cuándo notificar a la autoridad](https://www.aepd.es/preguntas-frecuentes/2-tus-obligaciones-como-responsable-del-tratamiento/11-brechas-de-datos-personales/FAQ-0233-a-quien-hay-que-notificar-las-brechas-de-datos-personales).
- [AEPD: comunicación a los afectados](https://www.aepd.es/preguntas-frecuentes/2-tus-obligaciones-como-responsable-del-tratamiento/11-brechas-de-datos-personales/FAQ-0254-a-quien-hay-que-comunicar-lo-ocurrido-en-una-brecha).
- [AEPD: herramienta Asesora Brecha](https://www.aepd.es/guias-y-herramientas/herramientas/asesora-brecha).
- [INCIBE-CERT](https://www.incibe.es/incibe-cert).

## 5.8. Conclusión

La notificación permite informar correctamente sobre un incidente y solicitar ayuda especializada.

En Daniel Company comunicaremos el ataque internamente, estudiaremos si existe una brecha de datos personales y acudiremos a INCIBE-CERT cuando sea necesario.

De esta manera, podremos gestionar mejor el incidente y cumplir las obligaciones correspondientes.

---

**Actividad desarrollada:** se han preparado la evaluación simulada, una matriz de decisión y los modelos de comunicación. Una posible brecha real necesitaría nuevas pruebas y una decisión documentada del responsable del tratamiento.

**Fuentes:**
- Agencia Española de Protección de Datos (AEPD): https://www.aepd.es
- INCIBE-CERT: https://www.incibe.es
- CCN-CERT: https://www.ccn-cert.cni.es
