PREFIX ?= ./
BINFILE ?= goinit
RCFILE = $$HOME/.goinitrc

.PHONY: install

install: $(BINFILE) $(RCFILE)

$(BINFILE):
	cp ./goinit.sh $(PREFIX)/$(BINFILE)

$(RCFILE):
ifneq ($(BASE_DIR),)
	echo 'BASE_DIR='$(BASE_DIR) > $(RCFILE)
endif
ifneq ($(README),)
	echo 'README='$(README) > $(RCFILE)
endif
ifneq ($(GIT_INIT),)
	echo 'GIT_INIT='$(GIT_INIT) > $(RCFILE)
endif
