# 6. SIMULACIÓN DEL INCIDENTE

**Estado:** simulación escrita, diálogo y acta académica completados. No se ha realizado una reunión real.

## 6.1. Descripción de la simulación

Se realizará una reunión simulada del equipo de ciberseguridad de Daniel Company para decidir cómo actuar ante el ataque.

El objetivo es demostrar cómo investigar, contener y recuperar los sistemas afectados.

**Participantes y funciones simuladas:**

- **Responsable de ciberseguridad:** coordina las decisiones y supervisa el incidente.
- **Técnico informático:** analiza los equipos y las conexiones sospechosas.
- **Responsable de protección de datos:** evalúa si se han comprometido datos personales.
- **Dirección:** supervisa las consecuencias para la empresa.

### Organización de la reunión

El responsable de ciberseguridad abrirá la reunión explicando lo que sabemos con certeza: un empleado ejecutó un adjunto malicioso y existen alertas posteriores. Después pedirá al técnico el estado de los equipos y a la persona responsable de protección de datos la evaluación inicial de la posible fuga.

Cada participante explicará su propuesta y se anotarán las decisiones, el responsable asignado y la comprobación necesaria para darla por terminada.

## 6.2. Situaciones durante la reunión

Durante la simulación aparecen cuatro problemas que requieren tomar decisiones.

| Situación | Decisión del equipo | Justificación |
|---|---|---|
| **1. Aparece otro equipo infectado.** | Aislarlo de la red y recopilar evidencias. | Evitar que el ataque se propague a más equipos. |
| **2. Existen indicios de extracción de datos.** | Revisar los registros y evaluar la posible brecha de datos personales. | Determinar qué información se ha visto comprometida y si debe notificarse a la AEPD. |
| **3. El atacante mantiene acceso.** | Bloquear las conexiones, revocar credenciales y buscar mecanismos de persistencia. | Impedir que el atacante continúe accediendo a la infraestructura. |
| **4. Dirección exige recuperar los servicios inmediatamente.** | Recuperar primero los servicios esenciales, cuando sea seguro hacerlo. | Evitar una nueva infección y proteger la información de la empresa. |

### Cómo justificaríamos cada decisión

**Segundo equipo infectado:** lo aislaremos y compararemos sus alertas con las del primer ordenador. Si coinciden, investigaremos si existe un origen común o movimiento entre equipos.

**Indicios de fuga:** no afirmaremos que hubo robo sin pruebas. Revisaremos registros y comunicaciones salientes, y valoraremos si hay datos personales implicados y qué obligaciones se activan.

**Atacante con acceso activo:** bloquearemos el acceso detectado y revisaremos credenciales, sesiones y mecanismos de persistencia. No daremos por eliminado el incidente solo porque desaparezca una alerta.

**Presión de dirección:** explicaremos que recuperar demasiado pronto puede provocar otra infección. Propondremos restablecer primero los servicios esenciales que hayan superado las comprobaciones de seguridad.

## 6.3. Representación escrita de la reunión

Este diálogo es una **recreación académica** de cómo podría actuar el equipo. Los cargos son ficticios y las situaciones se basan en el caso INC-2026-001.

**Responsable de ciberseguridad:** «Tenemos un incidente que empezó con un correo falso de Recursos Humanos. Un trabajador abrió un adjunto y después aparecieron conexiones sospechosas y alertas. Lo primero es impedir que se extienda y conservar las pruebas».

**Técnico informático:** «Propongo aislar el equipo afectado, anotar qué conexiones y procesos están activos y guardar los registros. Así podremos investigar sin modificar más información de la necesaria».

**Dirección:** «¿Podemos volver a trabajar con normalidad cuanto antes? La empresa no puede parar demasiado tiempo».

**Responsable de ciberseguridad:** «Recuperaremos los servicios por orden de importancia, pero solo después de revisar que sean seguros. Si los conectamos demasiado pronto, el problema puede repetirse».

**Responsable de protección de datos:** «También debemos comprobar si alguien accedió a datos de clientes. No podemos decir que hubo una filtración porque todavía no tenemos pruebas».

**Técnico informático:** «Acabamos de recibir una nueva alerta de otro ordenador. Lo trataré como posiblemente afectado: lo aislaré y compararé sus registros con los del primero».

**Responsable de ciberseguridad:** «De acuerdo. Además, revisa las cuentas y sesiones que podrían estar comprometidas. Si detectamos accesos del atacante, revocaremos credenciales y bloquearemos las conexiones relacionadas».

**Responsable de protección de datos:** «Mientras tanto, identificaré qué datos personales podían estar accesibles. Si confirmamos una brecha, valorararemos el riesgo para las personas y si tenemos que notificarla a la AEPD. No podemos esperar a terminar toda la investigación si ya conocemos una brecha notificable».

**Dirección:** «Entonces, ¿cuál es el plan que debemos seguir?».

**Responsable de ciberseguridad:** «Primero, aislamiento y conservación de pruebas; segundo, investigación y eliminación del acceso indebido; tercero, recuperación comprobada desde copias fiables; y, por último, seguimiento y medidas para evitar otro incidente».

**Dirección:** «Autorizo ese orden de trabajo. Quiero un informe con los resultados confirmados, los riesgos pendientes y cuándo podremos recuperar los servicios esenciales».

### Decisiones y motivos

| Decisión | Por qué es necesaria |
|---|---|
| Aislar los dos equipos sospechosos | Limitar la posible propagación y el acceso a la red. |
| Guardar registros y calcular hashes | Conservar evidencias y comprobar que no han cambiado. |
| Revisar cuentas y conexiones | Saber si el atacante todavía tiene acceso. |
| Evaluar una posible brecha | Determinar si existen datos personales afectados y obligaciones de notificación. |
| Recuperar desde copias seguras | Evitar volver a introducir el problema durante la recuperación. |
| Informar a dirección y empleados | Coordinar decisiones sin difundir información no confirmada. |

## 6.4. Acta de la reunión simulada

| Campo | Información |
|---|---|
| Empresa | Daniel Company (ficticia) |
| Referencia | INC-2026-001 |
| Actividad | Simulación escrita de reunión de respuesta |
| Fecha y duración de una reunión real | No aplicable: no se ha celebrado una reunión real |
| Participantes representados | Responsable de ciberseguridad, técnico informático, responsable de protección de datos y dirección |
| Objetivo | Decidir cómo contener, investigar, notificar si procede y recuperar los sistemas |

### Acuerdos y responsables

| N.º | Acuerdo | Responsable asignado | Estado en la simulación |
|---|---|---|---|
| 1 | Aislar y revisar los equipos sospechosos | Técnico informático | Decisión acordada; ejecución real no realizada |
| 2 | Guardar registros, conexiones y hashes de los archivos | Técnico informático y responsable de seguridad | Decisión acordada; existen prácticas demostrativas independientes en el laboratorio |
| 3 | Investigar si persiste el acceso del atacante | Responsable de ciberseguridad | Pendiente de resultados del caso |
| 4 | Identificar y evaluar datos personales potencialmente afectados | Responsable de protección de datos | Pendiente de pruebas |
| 5 | Determinar si hay obligación de notificación a la AEPD | Responsable del tratamiento, asesorado por protección de datos | Sin decisión definitiva mientras no haya hechos suficientes |
| 6 | Autorizar recuperación gradual tras verificaciones | Dirección y responsable de seguridad | Aprobada como procedimiento propuesto |
| 7 | Reforzar formación, actualizaciones, accesos y copias de seguridad | Responsable de seguridad y dirección | Medida preventiva propuesta |

### Seguimiento propuesto

El responsable de ciberseguridad revisará las tareas y actualizará el estado del incidente cuando existan nuevos resultados. No declararemos el caso resuelto hasta verificar que se ha eliminado el acceso no autorizado, que los sistemas recuperados funcionan correctamente y que se ha evaluado la posible brecha de datos.

**Resultado del ejercicio:** el equipo ha llegado a un plan de actuación razonado. La fuga de datos y la eliminación definitiva del atacante siguen sin estar confirmadas porque el caso es ficticio.

## 6.5. Conclusión

Esta reunión simulada muestra la importancia de coordinar a los diferentes responsables. Cada participante tiene una función distinta: el técnico reúne pruebas, seguridad dirige la respuesta, protección de datos evalúa las consecuencias para los clientes y dirección autoriza los recursos y la recuperación.

La decisión principal es **contener primero, investigar después y recuperar de forma segura**, sin ocultar ni inventar resultados.

**Entrega:** el guion y el acta escritos son la evidencia documental de la simulación. No se requieren capturas adicionales ni se afirmará que tuvo lugar una reunión real.
