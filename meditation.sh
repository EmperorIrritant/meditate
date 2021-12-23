#!/bin/bash

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