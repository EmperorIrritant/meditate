# meditate
A small script for meditation.

Finding minor inconveniences with existing meditation apps, I decided to make my own script. The idea is not to build a perfect application, but a very simple script that I can easily tweak to my needs.

# Usage

```
Usage: ./meditate [OPTIONS]

Options:
 -h                     this help
 -p <player>            vlc, mpv, ffplay, termux
 -t <seconds>           set meditation timer (default: infinite)
                        (NOT IMPLEMENTED YET)
 -c <pattern>           breath pattern as a in-hold-out-hold sequence
                        (e.g. 7070, 4444, 4662, 10_5_10_5) or as an
                        in-out sequence (e.g. 77, 44, 46, 10_5)
 -d <file>              sqlite db file (default:  in the
                        same directory)
 -s [file]              show session details in the database
 -i <importfile>        export sql or csv into database (merging of databases
                        not supported; imported database replaces existing,
                        if any, but backup of existing db is made)
 -e <outputfile>        export database as sql or csv, based on extension
```

# Setup

## Linux
Clone the repository, make sure any of the supported players are installed along with the sqlite3 package (including sqldiff) and 3 audio files for the phrases "Inhale", "Hold" and "Exhale". I may later upload the audio files I use for my purposes, but you can get your own from http://www.fromtexttospeech.com/ or elsewhere.

## Android
Install the Termux and the Termux:API apps and install the termux-api package. Then follow the instructions for the Linux setup. I have not found the sqldiff command for Termux, but the functionality that requires it won't execute when you specify termux as a player (termux-media-player is used).

# Working of the script

The script uses a command line player to play three audio files (for uttering the phrases "inhale", "hold" and "exhale") in a specific breath pattern. The sessions are saved to an sqlite database.
