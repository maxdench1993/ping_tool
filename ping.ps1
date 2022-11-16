$list=@("192.168.1.50","192.168.1.1")

while ($true){
    $date=Get-Date -Format "dd/MM/yyyy HH:mm"
    foreach ($i in $list){
        $result = Test-Connection -ComputerName $i -quiet -count 1

        if ($result -eq "True"){
            write-host  "$date - $i is online" -Foregroundcolor Green
        }else{
            write-host "$date - $i is offline" -Foregroundcolor red
        }
    }
}