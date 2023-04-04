#!/usr/bin/env python3

from gtts import gTTS
import playsound
import os
import sys

# TODO python3 -m pip install -U nuitka
# TODO sudo apt install python3-gi python3-gi-cairo gir1.2-gtk-4.0
# TODO sudo apt install libgirepository1.0-dev gcc libcairo2-dev pkg-config python3-dev gir1.2-gtk-4.0
# TODO pip3 install pycairo
# TODO pip3 install PyGObject

tts = gTTS(text=sys.argv[1], lang='en')

tts.save('/tmp/file.mp3')

playsound.playsound('/tmp/file.mp3', True)

os.remove("/tmp/file.mp3")