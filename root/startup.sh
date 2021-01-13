#! /bin/sh

trap "killall sleep php ; exit" INT TERM

echo "$FOLDERS" | while read F; do
  mkdir -p "/folders/$F"
done

export IFM_ROOT_DIR=/folders IFM_AUTH=0 IFM_API_AJAXREQUEST=false IFM_API_CHMOD=false IFM_API_EDIT=false \
       IFM_GUI_SHOWOWNER=false IFM_GUI_SHOWGROUP=false IFM_GUI_SHOWPERMISSIONS=false IFM_API_REMOTEUPLOAD=false

/usr/bin/php -S 0:80 -t /www &

sleep 2147483647d &
wait "$!"
