UNAME_S := $(shell uname -s)
UNAME_P := $(shell uname -p)
ifeq ($(UNAME_S),Linux)
  ifeq ($(UNAME_P),x86_64)
	include linux.mk
  else
	include linux.mk
  endif
endif
ifeq ($(UNAME_S),Darwin)
  include darwin.mk
endif
