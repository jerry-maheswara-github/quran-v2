#!/bin/bash

for i in $(seq -f "%03g" 1 100); do
  url="http://jerry.rf.gd/quran/v2/pocket/$i.jpg"

  wget "$url" -P ./pocket/

  if [ $? -ne 0 ]; then
    echo "[x] -- Gagal mendownload file $url"
  else
    echo "[OK] -- Berhasil mendownload file $url"
  fi
done

