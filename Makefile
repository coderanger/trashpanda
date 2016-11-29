upload:
	aws s3 sync . s3://trashpanda.club --exclude '.git/*' --exclude Makefile --exclude LICENSE --exclude '*.md' --exclude '*.markdown' --exclude '*.DS_Store' --acl public-read
	cfcli -d trashpanda.club purge

server:
	python3 -m http.server

.PHONY: upload
