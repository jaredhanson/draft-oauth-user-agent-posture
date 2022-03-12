spec: draft-hanson-oauth-user-agent-posture.txt

%.xml: %.md
	kramdown-rfc $< >$@

%.txt: %.xml
	xml2rfc $< -o $@ --text
