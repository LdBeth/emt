
all: libEMT.dylib
libEMT.dylib: emt.m
	clang -Wall -shared -framework Foundation -framework NaturalLanguage -objc-noarc -o libEMT.dylib emt.m
