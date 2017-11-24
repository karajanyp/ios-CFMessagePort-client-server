XCODE_BASE=/Users/admin/Downloads/Xcode.app/Contents
SIMULATOR_BASE=$(XCODE_BASE)/Developer/Platforms/iPhoneOS.platform
FRAMEWORKS=$(SIMULATOR_BASE)/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/
INCLUDES=$(SIMULATOR_BASE)/Developer/SDKs/iPhoneOS.sdk/usr/include/

all: client server

client: client.c
	clang -I$(INCLUDES) -F$(FRAMEWORKS) -o client client.c -framework CoreFoundation -arch arm64 -miphoneos-version-min=10.0 -isysroot /Users/admin/Downloads/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk

server: server.c
	clang -I$(INCLUDES) -F$(FRAMEWORKS) -o server server.c -framework CoreFoundation -arch arm64 -miphoneos-version-min=10.0 -isysroot /Users/admin/Downloads/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk