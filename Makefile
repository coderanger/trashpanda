upload:
	aws s3 sync . s3://trashpanda.club --exclude '.git/*' --exclude Makefile --acl public-read
	cfcli -d trashpanda.club purge

.PHONY: upload
