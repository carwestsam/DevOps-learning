
function typePrint($var)
{
  if ($var -eq $null){
    echo "type: Null";
  }else{
    echo "type: ", $var.getType()
  }
}
$LogFile = "$PWD/output.txt"
function WriteToLog
{
  param([string]$logline);
  $logline | timestamp | Out-File -FilePath $LogFile -NoClobber -Append -Encoding ASCII
}

function hi
{
  Get-Member -InputObject $input
  Write-Output $input.Exception
  Write-Output $input.GetType().FullName
  Write-Output $input.MoveNext()
  
  # $fi = $input.Current()
  # typePrint $fi
  # $ne = $input.MoveNext()
  # typePrint $ne
  # Get-Member -InputObject $ne
  # echo $ne.toString()
  #$second = $input.MoveNext()
}

function hoho()
{
  $a = 5
  if ($a -lt 2) {
    Write-Output $a;
  }
  else {
    # $b = 1/0;
    WriteToLog "some success"
    try{
      Write-Error "ThisError"
      Throw "NOooooo"
    } catch {
      WriteToLog "has error"
      WriteToLog  $error[0].Exception
      Write-Output $error[0].ToString()
    }
    WriteToLog "you"
  }
}
filter timestamp {"`n$(Get-Date -Format o): $_"}



# hoho 2>&1 


# hoho 2>&1 > $LogFile



hoho
# hoho | timestamp | Out-File -FilePath $LogFile -NoClobber -Append -Encoding ASCII
# hoho | WritetoLog