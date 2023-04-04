pre-build:
	python3 -m pip install -U nuitka
	sudo apt install python3-gi python3-gi-cairo gir1.2-gtk-4.0
	sudo apt install libgirepository1.0-dev gcc libcairo2-dev pkg-config python3-dev gir1.2-gtk-4.0
	pip3 install pycairo
	pip3 install PyGObject

build:
	python3 -m nuitka tts.py
	mv tts.bin tts

deploy:
	sudo mv tts /usr/bin/

clean:
	rm -rf tts.build