# The problem

Caused by a bug in a firmware, where a chipset PCIe port (GPP0) is incorrectly left enabled as a wake up source

# Solution

Create a file at `/etc/systemd/system/wakeup-disable-GPP0.service` (or any other name you prefer!):

```systemd
[Unit]
Description=Disable GPP0 as ACPI wakeup source
After=multi-user.target

[Service]
Type=oneshot
ExecStart=/bin/bash -c "echo GPP0 > /proc/acpi/wakeup"

[Install]
WantedBy=multi-user.target
```

Enable it:

```sh
sudo systemctl enable wakeup-disable-GPP0.service
```
