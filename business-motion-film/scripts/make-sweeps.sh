#!/usr/bin/env bash
# Synthesize clean launch-style UI sounds (no AI generation): pitched sweeps ("zips") and a crisp tick.
# Usage: scripts/make-sweeps.sh out_dir
set -euo pipefail
o="${1:-.}"; mkdir -p "$o"
zip(){ ffmpeg -v error -y -f lavfi -i "aevalsrc='(0.55*sin(2*PI*($2*t+($3-$2)*t*t/(2*$4)))+0.25*sin(4*PI*($2*t+($3-$2)*t*t/(2*$4))))*pow(sin(PI*min(t/$4\,1)),2)':s=48000:d=$4" -af "aecho=0.6:0.4:35|70:0.25|0.12,highpass=f=180,lowpass=f=9000,volume=0.9" -c:a libmp3lame -q:a 2 "$o/$1.mp3"; }
zip zip-up 380 1500 0.30
zip zip-down 1500 320 0.34
zip zip-soft 520 1100 0.24
ffmpeg -v error -y -f lavfi -i "aevalsrc='(0.6*sin(2*PI*2600*t)+0.35*sin(2*PI*5200*t)+0.2*sin(2*PI*1300*t))*exp(-t*90)':s=48000:d=0.07" -af "highpass=f=600" -c:a libmp3lame -q:a 2 "$o/tick.mp3"
ls "$o"
