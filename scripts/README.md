# Scripts y comandos

Esta carpeta contiene el script usado en el laboratorio de investigación de Windows:

- [AnalisisForense.ps1](AnalisisForense.ps1): recopila una lista de procesos, conexiones TCP y hasta 100 eventos recientes del registro **System** de Windows, y los exporta a archivos CSV en `C:\\Evidencias\\Analisis`.

## Cómo se utilizó

Se ejecutó en una máquina virtual Windows autorizada con PowerShell. Los archivos generados sirven para practicar la conservación y análisis inicial de registros. La captura [P3_07_ScriptForenseISE.png](../evidencias/P3_07_ScriptForenseISE.png) muestra el script en PowerShell ISE y los resultados guardados.

El script **no identifica malware por sí mismo** ni recoge todas las pruebas necesarias en una investigación forense real. Conviene conservar los CSV originales y calcular sus hashes SHA-256, como se explica en el [apartado 3](../03-investigacion/README.md).
