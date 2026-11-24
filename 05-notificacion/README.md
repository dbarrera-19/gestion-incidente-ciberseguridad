# 5. NOTIFICACIÓN Y ORGANISMOS DE RESPUESTA

**Estado:** teoría resumida aprobada; evaluación práctica y comunicación definitiva pendientes.

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

## 5.5. Conclusión

La notificación permite informar correctamente sobre un incidente y solicitar ayuda especializada.

En Daniel Company comunicaremos el ataque internamente, estudiaremos si existe una brecha de datos personales y acudiremos a INCIBE-CERT cuando sea necesario.

De esta manera, podremos gestionar mejor el incidente y cumplir las obligaciones correspondientes.

---

**Actividad pendiente:** preparar el modelo de comunicación definitivo y documentar la evaluación de la posible brecha de datos.

**Fuentes:**
- Agencia Española de Protección de Datos (AEPD): https://www.aepd.es
- INCIBE-CERT: https://www.incibe.es
- CCN-CERT: https://www.ccn-cert.cni.es
