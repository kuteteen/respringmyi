## respringmyi

### How does it work?
respringmyi works by using the [WatchConnectivity Framework](https://developer.apple.com/documentation/watchconnectivity), when you press the button on your Apple Watch, it sends a message to the iDevice, when the iDevice gets this message it sends a darwin notification to the tweak (which is allowed to spawn processes **our app isn't because it is sandboxed**, and that runs: ``killall -9 SpringBoard``.

### Why do you not use another platform (like Theos) to build your app?
The way WatchConnectivity works requires you to have the iOS and watchOS App in the same project, when you build an app with theos it fakesigns, this can not be done for the Apple Watch as there is no jailbreak available in mass to the public in the time of writing this. When a watchOS Jailbreak comes out that is eligible (i.e. supported on watchOS 6.x and on most Apple Watches), I will rewrite this, but until then you can just install the app with Xcode, and use the helper tweak!

### How do I install this?
- Download the two files: ``me.conorthedev.respringmyi.helper_(version)_iphoneos-arm.deb`` and ``respringmyi_application_(version).ipa`` from the [latest release](https://github.com/ConorTheDev/respringmyi/releases). 

- Install ``me.conorthedev.respringmyi.helper_(version)_iphoneos-arm.deb`` either by copying it to your iDevice, and using Filza to install it, or using the command ``dpkg -i path/to/me.conorthedev.respringmyi.helper_(version)_iphoneos-arm.deb``.

- Install the IPA file with ReProvision on your iDevice, or with AltDeploy by [pixelomer](http://twitter.com/pixelomer) from a Mac!

- If you don't see the respringmyi app on your Apple Watch, open the Apple Watch App, scroll down to the bottom where it says 'Available Apps' and click 'INSTALL'

#### Other Links
- [Twitter](https://twitter.com/ConorTheDev)
- [Donate](https://ko-fi.com/ConorTheDev)

*Enjoy :p*
