# Find out Which Application Hogs Port

List all ports in use

```sh
ss -tuln
```

Find out which process uses the port

```sh
lsof -i :<port>
```
