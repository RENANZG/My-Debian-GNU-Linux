USB tethering

https://forum.qubes-os.org/t/guide-internet-via-usb-tethering-for-noobs-as-me/13667

---

USB WiFi Adapter

How to configure a WiFi Adapter (USB device)

Qube Manager → sys-usb → Settings → Devices, add USB (if not already recognized)

Qube Manager → sys-usb → Settings → Services, add network-manager → Reboot sys-usb.

Use sys-usb as your sys-net:

[dom0] qvm-prefs sys-usb provides_network true

[dom0] qvm-prefs sys-firewall netvm sys-usb