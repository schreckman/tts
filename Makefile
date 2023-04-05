all: dependencies deploy
	echo "\n\nprogram was been copied to /usr/bin/tts"

dependencies:
	sudo apt install python3-gi python3-gi-cairo gir1.2-gtk-4.0
	sudo apt install libgirepository1.0-dev gcc libcairo2-dev pkg-config python3-dev gir1.2-gtk-4.0
	sudo apt-get install libgstreamer1.0-dev libgstreamer1.0-0 gstreamer1.0-tools gstreamer1.0-x
	sudo apt-get install libglib2.0-0 libglib2.0-bin
	sudo apt-get install gstreamer-1.0
	pip install -r requirements.txt

deploy:
	sudo mv tts /usr/bin/
