$key = Read-Host "Ingrese su clave (key)"
$endpoint = Read-Host "Ingrese su endpoint"
$img = Read-Host "Ingrese la url de la imagen a analizar"

$headers = @{
    "Ocp-Apim-Subscription-Key" = $key
    "Content-Type" = "application/json"
}

# Crear un objeto y convertirlo a JSON
$bodyObject = @{ url = $img }
$body = $bodyObject | ConvertTo-Json

Write-Host "Analyzing image...`n"

$result = Invoke-RestMethod -Method Post `
          -Uri "$endpoint/face/v1.0/detect?detectionModel=detection_01" `
          -Headers $headers `
          -Body $body

Write-Host "`nFrom June 21st 2022, Face service capabilities that return personally identifiable features are restricted."
Write-Host "See https://azure.microsoft.com/blog/responsible-ai-investments-and-safeguards-for-facial-recognition/ for details."
Write-Host "This code is restricted to returning the location of any faces detected:`n"

foreach ($face in $result)
{
    Write-Host("Face location: $($face.faceRectangle)`n")
}