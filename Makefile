SOURCES=eppctl

SYS_BIN=/usr/local/bin

install:
	install $(SOURCES) $(SYS_BIN)

uninstall:
	rm $(SYS_BIN)/$(SOURCES)
