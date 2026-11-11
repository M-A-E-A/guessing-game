README.md: guessinggame.sh
	@echo "# The Unix Workbench Guessing Game" > README.md
	@echo "" >> README.md
	@echo "**Make run at:** $$(date '+%Y-%m-%d %H:%M:%S %Z')" >> README.md
	@echo "" >> README.md
	@echo "**Lines of code in guessinggame.sh:** $$(wc -l < guessinggame.sh)" >> README.md

.PHONY: all clean
all: README.md

clean:
	rm -f README.md
