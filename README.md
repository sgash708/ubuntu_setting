# Description

these is ubuntuServer's setting for raspberrypi model4B

you can use selenium & golang...

## e.g. crontab

```bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
* * * * 1-5 bash -c "sleep $((RANDOM\%1800))s"; grep `date "+\%Y/\%-m/\%-d"`, /syukujitsu.csv > /dev/null || echo "foo"
```