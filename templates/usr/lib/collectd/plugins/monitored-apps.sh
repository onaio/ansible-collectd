#!/bin/bash
host="${COLLECTD_HOSTNAME:-localhost}"
interval="${COLLECTD_INTERVAL:-60}"

while sleep "$interval"
do
  source {{ monitored_apps_env_dir }}/{{ monitored_apps_env_file }}
  for (currentApp in "${{{ monitored_apps_env_var }}[@]}")
  do
    name=${currentApp%;*}
    version=${currentApp#*;}
    echo "PUTVAL \"$host/monitored-apps/$name/$version\" interval=$interval N:U"
  done
done