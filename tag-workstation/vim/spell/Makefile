default: en.utf-8.add.spl sv.utf-8.add.spl

en.utf-8.add.spl: en.utf-8.add
	vim -u NONE +"mkspell! en.utf-8.add" +qa

sv.utf-8.add.spl: sv.utf-8.add
	vim -u NONE +"mkspell! sv.utf-8.add" +qa

.PHONY: clean
clean:
	rm -f *.spl
