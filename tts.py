#!/usr/bin/env python3
from gtts import gTTS
import playsound
import os
import sys
from colorama import Fore

if len(sys.argv) < 2:
    print(Fore.RED, "Please use the program like this:")
    print(Fore.CYAN, "tts \"Text to be converted to speech\"")
else:
    tts = gTTS(text=sys.argv[1], lang='en')

    tts.save('/tmp/file.mp3')

    playsound.playsound('/tmp/file.mp3', True)

    os.remove("/tmp/file.mp3")
