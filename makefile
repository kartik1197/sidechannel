sim+_CXX = g++
CXXFLAGS = -std=c++14 -O3 -pthread -lpthread
REDR = > make.log 2>&1
SOURCES = $(shell echo src/*.cpp)
HEADERS = $(shell echo src/*.h)

TARGET1 = basic_aes
TARGET2 = gdklib_name
TARGET3 = gdklib_uni
TARGET4 = openssl_aes
TARGET5 = openssl_des
TARGET6 = openssl_rc4

TARGET_PFIX1 = _file
TARGET_PFIX2 = _all
TARGET_PFIX3 = _lm
TARGET_PFIX4 = _sm
TARGET_PFIX5 = _dm

DEFP1  = -D PARAM_LEN=1
DEFP8  = -D PARAM_LEN=8
DEFP10 = -D PARAM_LEN=10
DEFP16 = -D PARAM_LEN=16

DEFT1 = -D FILES
DEFT2 = -D ALL
DEFT3 = -D LM
DEFT4 = -D SM
DEFT5 = -D DM

DEFA1 = -D BASIC_AES
DEFA2 = -D GDKLIB_NAME
DEFA3 = -D GDKLIB_UNI
DEFA4 = -D OPENSSL_AES
DEFA5 = -D OPENSSL_DES
DEFA6 = -D OPENSSL_RC4

all: $(TARGET1) $(TARGET2) $(TARGET3) $(TARGET4) $(TARGET5) $(TARGET6)

$(TARGET1): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(DEFP16) $(DEFT1) $(DEFA1) -o $(TARGET1)$(TARGET_PFIX1) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP16) $(DEFT2) $(DEFA1) -o $(TARGET1)$(TARGET_PFIX2) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP16) $(DEFT3) $(DEFA1) -o $(TARGET1)$(TARGET_PFIX3) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP16) $(DEFT4) $(DEFA1) -o $(TARGET1)$(TARGET_PFIX4) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP16) $(DEFT5) $(DEFA1) -o $(TARGET1)$(TARGET_PFIX5) $(SOURCES) $(REDR)

$(TARGET2): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(DEFP1) $(DEFT1) $(DEFA2) -o $(TARGET2)$(TARGET_PFIX1) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP1) $(DEFT2) $(DEFA2) -o $(TARGET2)$(TARGET_PFIX2) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP1) $(DEFT3) $(DEFA2) -o $(TARGET2)$(TARGET_PFIX3) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP1) $(DEFT4) $(DEFA2) -o $(TARGET2)$(TARGET_PFIX4) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP1) $(DEFT5) $(DEFA2) -o $(TARGET2)$(TARGET_PFIX5) $(SOURCES) $(REDR)

$(TARGET3): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(DEFP1) $(DEFT1) $(DEFA3) -o $(TARGET3)$(TARGET_PFIX1) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP1) $(DEFT2) $(DEFA3) -o $(TARGET3)$(TARGET_PFIX2) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP1) $(DEFT3) $(DEFA3) -o $(TARGET3)$(TARGET_PFIX3) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP1) $(DEFT4) $(DEFA3) -o $(TARGET3)$(TARGET_PFIX4) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP1) $(DEFT5) $(DEFA3) -o $(TARGET3)$(TARGET_PFIX5) $(SOURCES) $(REDR)

$(TARGET4): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(DEFP16) $(DEFT1) $(DEFA4) -o $(TARGET4)$(TARGET_PFIX1) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP16) $(DEFT2) $(DEFA4) -o $(TARGET4)$(TARGET_PFIX2) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP16) $(DEFT3) $(DEFA4) -o $(TARGET4)$(TARGET_PFIX3) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP16) $(DEFT4) $(DEFA4) -o $(TARGET4)$(TARGET_PFIX4) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP16) $(DEFT5) $(DEFA4) -o $(TARGET4)$(TARGET_PFIX5) $(SOURCES) $(REDR)

$(TARGET5): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(DEFP8) $(DEFT1) $(DEFA5) -o $(TARGET5)$(TARGET_PFIX1) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP8) $(DEFT2) $(DEFA5) -o $(TARGET5)$(TARGET_PFIX2) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP8) $(DEFT3) $(DEFA5) -o $(TARGET5)$(TARGET_PFIX3) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP8) $(DEFT4) $(DEFA5) -o $(TARGET5)$(TARGET_PFIX4) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP8) $(DEFT5) $(DEFA5) -o $(TARGET5)$(TARGET_PFIX5) $(SOURCES) $(REDR)

$(TARGET6): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(DEFP10) $(DEFT1) $(DEFA6) -o $(TARGET6)$(TARGET_PFIX1) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP10) $(DEFT2) $(DEFA6) -o $(TARGET6)$(TARGET_PFIX2) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP10) $(DEFT3) $(DEFA6) -o $(TARGET6)$(TARGET_PFIX3) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP10) $(DEFT4) $(DEFA6) -o $(TARGET6)$(TARGET_PFIX4) $(SOURCES) $(REDR)
	$(CXX) $(CXXFLAGS) $(DEFP10) $(DEFT5) $(DEFA6) -o $(TARGET6)$(TARGET_PFIX5) $(SOURCES) $(REDR)

clean:
	-@rm $(TARGET1)$(TARGET_PFIX1) $(TARGET1)$(TARGET_PFIX2) $(TARGET1)$(TARGET_PFIX3) $(TARGET1)$(TARGET_PFIX4) $(TARGET1)$(TARGET_PFIX5)
	-@rm $(TARGET2)$(TARGET_PFIX1) $(TARGET2)$(TARGET_PFIX2) $(TARGET2)$(TARGET_PFIX3) $(TARGET2)$(TARGET_PFIX4) $(TARGET2)$(TARGET_PFIX5)
	-@rm $(TARGET3)$(TARGET_PFIX1) $(TARGET3)$(TARGET_PFIX2) $(TARGET3)$(TARGET_PFIX3) $(TARGET3)$(TARGET_PFIX4) $(TARGET3)$(TARGET_PFIX5)
	-@rm $(TARGET4)$(TARGET_PFIX1) $(TARGET4)$(TARGET_PFIX2) $(TARGET4)$(TARGET_PFIX3) $(TARGET4)$(TARGET_PFIX4) $(TARGET4)$(TARGET_PFIX5)
	-@rm $(TARGET5)$(TARGET_PFIX1) $(TARGET5)$(TARGET_PFIX2) $(TARGET5)$(TARGET_PFIX3) $(TARGET5)$(TARGET_PFIX4) $(TARGET5)$(TARGET_PFIX5)
	-@rm $(TARGET6)$(TARGET_PFIX1) $(TARGET6)$(TARGET_PFIX2) $(TARGET6)$(TARGET_PFIX3) $(TARGET6)$(TARGET_PFIX4) $(TARGET6)$(TARGET_PFIX5)
	-@rm stderr.log miss_out mkdir.log make.log cross-compile.log
	-@rm -rf temp/*
