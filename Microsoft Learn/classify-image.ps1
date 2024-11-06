$predictionUrl="https://visionanimales-prediction.cognitiveservices.azure.com/customvision/v3.0/Prediction/6b519496-753a-4099-b646-179ba4d08eec/classify/iterations/Iteration1/url"
$predictionKey = "ad66d83d13944f0392b7fa9af82a78f9"


# Code to call Custom Vision service for image classification

$img_num = 2
if ($args.count -gt 0 -And $args[0] -in (1..3))
{
    $img_num = $args[0]
}

$img = "https://raw.githubusercontent.com/MicrosoftLearning/AI-900-AIFundamentals/main/data/vision/animals/animal-$($img_num).jpg"

$headers = @{}
$headers.Add( "Prediction-Key", $predictionKey )
$headers.Add( "Content-Type","application/json" )

$body = "{'url' : '$img'}"

write-host "Analyzing image..."
$result = Invoke-RestMethod -Method Post `
          -Uri $predictionUrl `
          -Headers $headers `
          -Body $body | ConvertTo-Json -Depth 5

$prediction = $result | ConvertFrom-Json

Write-Host ("`n",$prediction.predictions[0].tagName, "`n")
