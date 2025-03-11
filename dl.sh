#!/bin/bash


echo 'Enter Video URL or "-a links.txt"'
read url


yt-dlp -f 'bestvideo[height<=1080]+bestaudio/best[height<=480]' --merge-output-format mp4 -o "%(title)s.%(ext)s" $url

# --merge-output-format
# yt-dlp -o "%(title).50s.%(ext)s" https://www.youtube.com/watch?v=example
