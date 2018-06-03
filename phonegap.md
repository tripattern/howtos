# PhoneGap

## Mac OS X
### Install
```
brew install ant
brew install maven
brew install gradle
brew cask install android-sdk
brew cask install android-ndk
```
* Environment variables setup
  * Reference: https://gist.github.com/patrickhammond/4ddbe49a67e5eb1b9c03
```
export ANT_HOME=/usr/local/opt/ant
export MAVEN_HOME=/usr/local/opt/maven
export GRADLE_HOME=/usr/local/opt/gradle
#export ANDROID_HOME=/usr/local/opt/android-sdk
#export ANDROID_NDK_HOME=/usr/local/opt/android-ndk
export ANDROID_HOME=/usr/local/Caskroom/android-sdk
export ANDROID_NDK_HOME=/usr/local/Caskroom/android-ndk

export PATH=$ANT_HOME/bin:$PATH
export PATH=$MAVEN_HOME/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/build-tools/19.1.0:$PATH
```

### Maintain
* Update the SDK
```
brew update
android update sdk --no-ui
```