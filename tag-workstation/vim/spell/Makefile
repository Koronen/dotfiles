.PHONY: clean

default: en.utf-8.add.spl

en.utf-8.add.spl: en.utf-8.add
	vim -u NONE +"mkspell! en.utf-8.add" +qa

clean:
	rm -f *.spl
