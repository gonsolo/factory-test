all: config harden
config:
	./tt/tt_tool.py --create-user-config --ihp
harden:
	./tt/tt_tool.py --harden --ihp
