$b64 = [convert]::ToBase64String( (wget "https://tensorflow.org/images/blogs/serving/cat.jpg").Content )

$body = "{`"instances`" : [{`"b64`": `"$b64`"}]}"


while($true) {

    $start = Get-date
    $result = wget -Method Post -Body $body -Uri "http://localhost:8501/v1/models/resnet:predict"
    $result.Content | ConvertFrom-Json

    $end = Get-date
    $time = $end -$start

    $time.TotalSeconds
    $result.Headers

}