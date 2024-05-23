# Croc utility reminder

This is a reminder of general croc commands

```nu
# Send a file (self-hosted relay)

# 1. Start relay on first pc
croc relay

# 2. On pc with adress 192.168.0.0
croc --relay 192.168.0.0:9009 send [filename]

# 3. On receiving pc
croc --relay 192.168.0.0:9009 [pass-phrase]

# If you are connected to interenet

# On first pc
croc send [filename]

# On second pc
croc [pass-phrase]
```
