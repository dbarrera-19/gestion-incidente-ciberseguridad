# 6. SIMULACIÓN DEL INCIDENTE

**Estado:** guion teórico aprobado; representación y acta definitiva pendientes.

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

## 6.3. Acta de la reunión

**Empresa:** Daniel Company

**Incidente:** INC-2026-001

**Tipo de reunión:** Simulación de respuesta ante un incidente.

**Decisiones acordadas en el guion:**

1. Aislar los equipos sospechosos.
2. Conservar las evidencias digitales.
3. Investigar las conexiones y los posibles accesos no autorizados.
4. Revisar si existe una brecha de datos personales.
5. Eliminar la amenaza y recuperar los sistemas de forma segura.
6. Mejorar las medidas de prevención para evitar futuros incidentes.

Las decisiones se revisarán según los resultados de la investigación.

### Seguimiento de las decisiones

Para convertir el guion en un acta completa, registraremos la **fecha, duración, participantes, problema planteado, decisión, responsable y estado** de cada tarea.

| Tarea acordada | Responsable simulado | Comprobación pendiente |
|---|---|---|
| Aislar equipos sospechosos | Técnico informático | Verificar el aislamiento |
| Analizar posible salida de datos | Responsable de ciberseguridad | Revisar registros y evidencias |
| Evaluar obligación de notificar | Responsable de protección de datos | Documentar análisis de riesgo |
| Autorizar la recuperación gradual | Dirección y responsable de seguridad | Validar que los servicios sean seguros |

Este cuadro representa **decisiones previstas para la simulación**, no actuaciones reales ya ejecutadas.

## 6.4. Conclusión

La simulación permite practicar la toma de decisiones durante un incidente de ciberseguridad.

En Daniel Company hemos planteado cómo actuar ante nuevos equipos infectados, posibles fugas de datos y accesos persistentes del atacante.

La prioridad será detener el ataque, proteger las evidencias y recuperar los servicios sin comprometer nuevamente la seguridad.

---

**Actividad pendiente:** representar la reunión, documentar las decisiones y completar el acta con los participantes y la fecha de la simulación.
