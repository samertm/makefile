.PHONY: serve watch-serve deps db-reset test

serve:
	# Some serve command

watch-serve:
	$(shell while true; do $(MAKE) serve & PID=$$! ; echo $$PID ; inotifywait -r -e close_write . ; kill $$PID ; done)
