$disk = fsutil volume diskfree C: | find /i "of bytes"
$disk = $disk -replace '\D+(\d+)','$1'
"{0:#.0}GB" -f ($disk/1GB)