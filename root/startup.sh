#! /bin/sh

trap "killall sleep ; exit" INT TERM

sleep 2147483647d &
wait "$!"
