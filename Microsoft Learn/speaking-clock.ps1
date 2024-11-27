$key= Read-Host "Ingrese la Key del Servicio de Speech"
$region="eastus"


# Code to call Speech to Text API
$wav = "./data/speech/time.wav"

$headers = @{}
$headers.Add( "Ocp-Apim-Subscription-Key", $key )
$headers.Add( "Content-Type","audio/wav" )


write-host "Analyzing audio..."
$result = Invoke-RestMethod -Method Post `
          -Uri "https://$region.stt.speech.microsoft.com/speech/recognition/conversation/cognitiveservices/v1?language=es-AR" `
          -Headers $headers `
          -InFile $wav

$analysis = $result
Write-Host ("`nYou said '$($analysis.DisplayText)'")

if ($analysis.DisplayText -eq "What time is it?"){
    # Code to call Text to Speech API
    $sml = "<speak version='1.0' xml:lang='es-ES'>
    <voice xml:lang='es-ES' xml:gender='Female' name='es-ES-JennyMultilingualNeural'>
        Es la hora, es la hora de jugar. A Jugar todos juntos. A Jugar con la inteligencia artificial
    </voice>
    </speak>"

    $headers = @{}
    $headers.Add( "Ocp-Apim-Subscription-Key", $key )
    $headers.Add( "Content-Type","application/ssml+xml" )
    $headers.Add( "X-Microsoft-OutputFormat","audio-16khz-128kbitrate-mono-mp3" )

    $outputFile = "output3.wav"

    write-host "Synthesizing speech..."
    $result = Invoke-RestMethod -Method Post `
        -Uri "https://$region.tts.speech.microsoft.com/cognitiveservices/v1" `
        -Headers $headers `
        -Body $sml `
        -OutFile $outputFile

    write-host $result
    write-host "Response saved in $outputFile `n"

}