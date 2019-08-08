SHELL = /bin/sh

.PHONY: clobber

BINDIR = $(GOPATH)/bin
SOURCES = *.go

$(BINDIR)/genCodeplug: $(SOURCES)
	go install

clobber:
	rm -f $(BINDIR)/genCodeplug
