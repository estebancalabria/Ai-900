$endpoint= Read-Host "Ingrese el endopoint del recurso de Computer Vision"
$key= Read-Host "Ingrese la key del recurso de Computer Vision"
$img = Read-Host "Ingrese la url de la imagen a analizar"


$headers = @{}
$headers.Add( "Ocp-Apim-Subscription-Key", $key )
$headers.Add( "Content-Type","application/json" )


$body = "{'url' : '$img'}"

write-host "Analyzing image..."
$result = Invoke-RestMethod -Method Post `
          -Uri "$endpoint/vision/v3.2/analyze?visualFeatures=Categories,Description,Objects&language=es" `
          -Headers $headers `
          -Body $body | ConvertTo-Json -Depth 5

$analysis = $result | ConvertFrom-Json
Write-Host("`nDescription:")
foreach ($caption in $analysis.description.captions)
{
    Write-Host ($caption.text)
}

Write-Host("`nObjects in this image:")
foreach ($object in $analysis.objects)
{
    Write-Host (" -", $object.object)
}

Write-Host("`nTags relevant to this image:")
foreach ($tag in $analysis.description.tags)
{
    Write-Host (" -", $tag)
}

Write-Host("`n")