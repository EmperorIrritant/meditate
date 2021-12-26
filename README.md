# meditate
A small script for meditation.

Finding minor inconveniences with existing meditation apps, I decided to make my own script. The idea is not to build a perfect application, but a very simple script that I can easily tweak to my needs.

# Usage

```
Usage: ./meditate [OPTIONS]

Options:
 -p <player>            vlc, mpv, ffplay, termux
 -t <seconds>           set meditation timer (default: infinite) (NOT IMPLEMENTED YET)
 -d <file>              sqlite db file (default:  in the same directory)
 -s [file]              show session details in the database
 -h                     this help
```

# Setup

## Linux
Clone the repository, make sure any of the supported players are installed along with the sqlite3 package (including sqldiff) and 3 audio files for the phrases "Inhale", "Hold" and "Exhale". I may later upload the audio files I use for my purposes, but you can get your own from http://www.fromtexttospeech.com/ or elsewhere.

## Android
Install the Termux and the Termux:API apps and install the termux-api package. Then follow the instructions for the Linux setup. I have not found the sqldiff command for Termux, but the functionality that requires it won't execute when you specify termux as a player (termux-media-player is used).

# Working of the script

The script uses a command line player to play three audio files (for uttering the phrases "inhale", "hold" and "exhale") in a specific breath pattern. The sessions are saved to an sqlite database.
