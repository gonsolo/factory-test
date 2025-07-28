ifndef PDK_ROOT
    $(error The environment variable PDK_ROOT is not set or is empty. Please set it to the path of your PDK installation.)
endif

.PHONY: all config harden

all: config harden
config:
	./tt/tt_tool.py --create-user-config --ihp
harden:
	./tt/tt_tool.py --harden --ihp
