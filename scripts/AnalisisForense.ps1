# AnalisisForense.ps1
# Recopilacion inicial de informacion para un laboratorio autorizado.
# No detecta malware por si solo ni representa una investigacion forense completa.

$carpeta = "C:\Evidencias\Analisis"
New-Item -Path $carpeta -ItemType Directory -Force | Out-Null

# Procesos activos
Get-Process | Export-Csv "$carpeta\procesos.csv" -NoTypeInformation

# Conexiones TCP
Get-NetTCPConnection | Export-Csv "$carpeta\conexiones.csv" -NoTypeInformation

# Ultimos 100 eventos del registro System
Get-EventLog -LogName System -Newest 100 |
    Export-Csv "$carpeta\eventos.csv" -NoTypeInformation

# Comprobar archivos generados
Get-ChildItem $carpeta | Select-Object Name, Length
