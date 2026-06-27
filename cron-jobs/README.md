Folder holds various cron jobs deployed for linux OS.

**----------------------------------------------------------------------**

**system_health.sh**

- create new file -> _/usr/local/bin/system_health.sh_
- make the executable -> _sudo chmod +x /usr/local/bin/system_health.sh_
- add the cron job (edit cron) -> _crontab -e_
- to run everyday @ 7:00 -> 0 7 * * * /usr/local/bin/system_health.sh
- to run hourly -> 0 * * * * /usr/local/bin/system_health.sh
- add temp sense -> sudo apt install lm-sensors
                    sudo sensors-detect
Creates directory ->
    ~/system-health/
        health_2026-06-27_07-00-00.log
        health_2026-06-28_07-00-00.log
        ...
Each file is a full system snapshot — extremely useful for:
- Debugging slowdowns
- Checking if a service died overnight
- Monitoring disk creep
- Seeing if your machine overheats
- Tracking network behaviour

**----------------------------------------------------------------------**




