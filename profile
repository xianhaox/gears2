# To update project for new SDK
# android update project -p project -t android-7

# App
export APP=GearsES2eclair

# Update SDK/NDK to point to the Android SDK and NDK
SDK=$HOME/android/android-sdk
NDK=$HOME/android/android-ndk
guess_sdk=$(dirname $(dirname `which adb`))
guess_ndk=$(dirname `which ndk-build`)
SDK=${ANDROID_SDK:-$guess_sdk}
NDK=${ANDROID_NDK:-$guess_ndk}

#-- DON'T CHANGE BELOW LINE --

export PATH=$SDK/tools:$SDK/platform-tools:$PATH
export ANDROID_NDK=$NDK
echo "sdk.dir=$SDK" > project/local.properties

export TOP=`pwd`
alias croot='cd $TOP'
