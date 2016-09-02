# pi_cputemp_to_osem

bash script + systemd timer files for periodically report raspberry pi cpu temperature to the [openSenseMap](https://opensensemap.org)

Requirements:
- Raspberry Pi with Linux & systemd (Raspbian Jessie Lite)
- Registered a senseBox on the [openSenseMap](https://opensensemap.org)

Install:
- Modify `post_temp_to_osem.sh` script with your senseBox Id and sensor Id
- Modify `osem_temp.service` to match the location of the `post_temp_to_osem.sh`
- Modify `osem_temp.timer` to match your desired interval
- Copy both `osem_temp.service` and `osem_temp.timer` to `/etc/systemd/system`
- `sudo systemctl daemon-reload`
- `sudo systemctl enable osem_temp.timer`
- `sudo systemctl start osem_temp.timer`
- `sudo systemctl list-timers`
