linux:
	cd src/linux && make

macos:
	cd src/macos && make

windows:
	cd src/windows && make

check:
	cd tests && make check

clean:
	cd src/$(OS) && make clean
	cd cmd && make clean
	cd tests && make clean
