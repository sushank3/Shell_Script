#!/bin/bash

read -p "Enter text to convert it into banner: " user_input

sudo apt update

sudo apt install toilet figlet


#figlist

figlet ${user_input}

figlet -f slant "${user_input}"

# Available filters:
# "crop": crop unused blanks
# "gay": add a rainbow colour effect
# "metal": add a metallic colour effect
# "flip": flip horizontally
# "flop": flip vertically
# "180": rotate 180 degrees
# "left": rotate 90 degrees counterclockwise
# "right": rotate 90 degrees clockwise
# "border": surround text with a border

toilet -f bigmono9 -F gay ${user_input}

toilet -f mono12 -F metal ${user_input}

toilet -f mono12 -F metal -F flip ${user_input}