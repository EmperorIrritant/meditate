#!/bin/bash

SECONDS=0

trap display_time INT

function display_time() {
  diff=$SECONDS
  tput cub 2 #To clear the "^C" characters printed on pressing Ctrl+C
  echo "Full breath cycles: $count"
  echo "Meditation Time: $(($diff / 3600)) hours, $((($diff / 60) % 60)) minutes and $(($diff % 60)) seconds"
  exit
}

FPATH=.
INHALE="$FPATH"/Inhale.mp3
HOLD="$FPATH"/Hold.mp3
EXHALE="$FPATH"/Exhale.mp3

INHALETIME=6
INHALEHOLDTIME=4
EXHALETIME=7
EXHALEHOLDTIME=3

PLAYER="mpv --no-terminal"

count=0
while sleep $EXHALEHOLDTIME;
do
  count=$((count+1));
  $PLAYER $INHALE;
  sleep $INHALETIME;
  $PLAYER $HOLD;
  sleep $INHALEHOLDTIME;
  $PLAYER $EXHALE;
  sleep $EXHALETIME;
  $PLAYER $HOLD;
done