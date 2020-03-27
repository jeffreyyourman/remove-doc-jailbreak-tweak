ARCHS = armv7 arm64
include /Users/jeffyourman/MyStuff/pleasure/code/tweaks/theos/makefiles/common.mk

TWEAK_NAME = helloworld
helloworld_FILES = Tweak.x
helloworld_FRAMEWORKS = UIkit

include /Users/jeffyourman/MyStuff/pleasure/code/tweaks/theos/makefiles/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"



# INSTALL_TARGET_PROCESSES = SpringBoard
# helloworld_CFLAGS = -fobjc-arc