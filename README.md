Makefile snippets


# watch-serve

Restart your server when a file is changed.

```make
watch-serve:
	$(shell while true; do $(MAKE) serve & PID=$$! ; echo $$PID ; inotifywait -r -e close_write . ; kill $$PID ; done)
```
