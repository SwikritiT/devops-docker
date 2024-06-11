$ docker run  -it --name website  ubuntu sh -c 'apt update; apt -y install curl; while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'

```bash
Input website:
helsinki.fi
Searching..
<html>
<head><title>301 Moved Permanently</title></head>
<body>
<center><h1>301 Moved Permanently</h1></center>
<hr><center>nginx/1.22.1</center>
</body>
</html>
Input website:
```
