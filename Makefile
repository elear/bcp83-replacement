
DOCS=	draft-lear-bcp83-replacement.txt \
	draft-lear-bcp83-replacement.xml \
	draft-lear-bcp83-replacement.html

all: $(DOCS)

%.xml:	%.mkd
	kramdown-rfc2629 $< > $@

%.html %.txt:	%.xml
	xml2rfc --html $<
	xml2rfc --text $<
