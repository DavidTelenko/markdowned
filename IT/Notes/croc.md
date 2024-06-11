# Croc utility reminder

This is a reminder of general croc commands

```nu
# Send a file (self-hosted relay)

# 1. Start relay on pc with adress 192.168.0.0
croc relay

# 2. On pc with adress 192.168.0.0
croc --relay 192.168.0.0:9009 [filename]

# 3. On receiving pc
croc --relay 192.168.0.0:9009 [pass-phrase]
```

If error occurred while sending and peer appears to be disconnected try
restarting pc, and activate network sharing in control panel (on windows)
