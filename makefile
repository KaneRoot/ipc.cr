doc:
	crystal docs

DOC_HTTPD_ACCESS_LOGS ?= /tmp/access.log
DOC_HTTPD_ADDRESS     ?= 127.0.0.1
DOC_HTTPD_PORT        ?= 9000
serve-doc:
	darkhttpd docs/ --addr $(DOC_HTTPD_ADDRESS) --port $(DOC_HTTPD_PORT) --log $(DOC_HTTPD_ACCESS_LOGS)
