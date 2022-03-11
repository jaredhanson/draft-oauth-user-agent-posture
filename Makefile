spec: draft-hanson-oauth-user-agent-posture.xml

%.xml: %.md
	kramdown-rfc $< >$@

%.txt: %.xml
	xml2rfc $< -o $@ --text
