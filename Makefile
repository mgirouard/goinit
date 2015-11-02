PREFIX ?= $(shell pwd)
BINFILE ?= goinit
RCFILE = $$HOME/.goinitrc

.PHONY: install clean

install: $(BINFILE) $(RCFILE)

clean:
	rm -rf $(PREFIX)/$(BINFILE)
	rm -rf $(RCFILE)

$(BINFILE):
	cp ./goinit.sh $(PREFIX)/$(BINFILE)

$(RCFILE):
ifneq ($(BASE_DIR),)
	echo 'BASE_DIR='$(BASE_DIR) > $(RCFILE)
endif
ifneq ($(README),)
	echo 'README='$(README) >> $(RCFILE)
endif
ifneq ($(GIT_INIT),)
	echo 'GIT_INIT='$(GIT_INIT) >> $(RCFILE)
endif
