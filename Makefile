
DOCS=	draft-lear-no-more-dog-pile-on-the-rabbit.txt \
	draft-lear-no-more-dog-pile-on-the-rabbit.xml \
	draft-lear-no-more-dog-pile-on-the-rabbit.html

all: $(DOCS)

%.xml:	%.mkd
	kramdown-rfc2629 $< > $@

%.html %.txt:	%.xml
	xml2rfc --html $<
	xml2rfc --text $<
