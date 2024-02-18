SOURCE_SYSTEMD=eppctl.service
SOURCE_EXECUTABLE=eppctl
SOURCE_CONF=eppctl.conf

SYS_BIN=/usr/local/bin
SYS_SERVICES=/etc/systemd/system
SYS_CONF=/etc

install:
	install $(SOURCE_EXECUTABLE) $(SYS_BIN)
	install $(SOURCE_SYSTEMD) $(SYS_SERVICES)
	install $(SOURCE_CONF) $(SYS_CONF)
	systemctl daemon-reload

uninstall:
	rm "$(SYS_BIN)/$(SOURCE_EXECUTABLE)"
	rm "$(SYS_SERVICES)/$(SOURCE_SYSTEMD)"
	rm "$(SYS_CONF)/$(SOURCE_CONF)"
	systemctl deamon-reload
