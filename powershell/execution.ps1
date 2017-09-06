$stdErrLog="$PWD/err.txt"
$stdOutLog="$PWD/output.txt"

Start-Process -File redirect.ps1 -RedirectStandardOutput $stdOutLog -RedirectStandardError $stdErrLog -wait
echo "finished"
