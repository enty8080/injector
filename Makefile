linux:
	cd src/linux && make
	cd cmd && make

macos:
	cd src/macos && make
	cd cmd && make

windows:
	cd src/windows && make
	cd cmd && make

check:
	cd tests && make check

clean:
	cd src/$(OS) && make clean
	cd cmd && make clean
	cd tests && make clean
