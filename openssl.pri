
INCLUDEPATH     += ../../libs/android_openssl/static/include
CONFIG(release, debug|release):SSL_PATH = $$PWD
CONFIG(debug,   debug|release):SSL_PATH = $$PWD/no-asm

equals(ANDROID_TARGET_ARCH, armeabi-v7a){
    QMAKE_LIBDIR        += $$SSL_PATH/static/lib/arm
    LIBS                += $$SSL_PATH/latest/arm/libcrypto_1_1.so $$SSL_PATH/latest/arm/libssl_1_1.so
    ANDROID_EXTRA_LIBS  += $$SSL_PATH/latest/arm/libcrypto_1_1.so $$SSL_PATH/latest/arm/libssl_1_1.so
}

equals(ANDROID_TARGET_ARCH, arm64-v8a){
    QMAKE_LIBDIR        += $$SSL_PATH/static/lib/arm64
    LIBS                +=  $$SSL_PATH/latest/arm64/libcrypto_1_1.so  $$SSL_PATH/latest/arm64/libssl_1_1.so
    ANDROID_EXTRA_LIBS  +=  $$SSL_PATH/latest/arm64/libcrypto_1_1.so  $$SSL_PATH/latest/arm64/libssl_1_1.so
}

equals(ANDROID_TARGET_ARCH, x86){
    QMAKE_LIBDIR        += $$SSL_PATH/static/lib/x86
    LIBS                += $$SSL_PATH/latest/x86/libcrypto_1_1.so $$SSL_PATH/latest/x86/libssl_1_1.so
    ANDROID_EXTRA_LIBS  += $$SSL_PATH/latest/x86/libcrypto_1_1.so $$SSL_PATH/latest/x86/libssl_1_1.so
}

equals(ANDROID_TARGET_ARCH, x86_64){
    QMAKE_LIBDIR        += $$SSL_PATH/static/lib/x86_64
    LIBS                += $$SSL_PATH/latest/x86_64/libcrypto_1_1.so $$SSL_PATH/latest/x86_64/libssl_1_1.so
    ANDROID_EXTRA_LIBS  += $$SSL_PATH/latest/x86_64/libcrypto_1_1.so $$SSL_PATH/latest/x86_64/libssl_1_1.so
}
