## respringmyi

### How does it work?
respringmyi works by using the [WatchConnectivity Framework](https://developer.apple.com/documentation/watchconnectivity), when you press the button on your Apple Watch, it sends a message to the iDevice, when the iDevice gets this message it sends a darwin notification to the tweak (which is allowed to spawn processes **our app isn't because it is sandboxed**, and that runs: ``killall -9 SpringBoard``.

### Why do you not use another platform (like Theos) to build your app?
The way WatchConnectivity works requires you to have the iOS and watchOS App in the same project, when you build an app with theos it fakesigns, this can not be done for the Apple Watch as there is no jailbreak available in mass to the public in the time of writing this. When a watchOS Jailbreak comes out that is eligible (i.e. supported on watchOS 6.x and on most Apple Watches), I will rewrite this, but until then you can just install the app with Xcode, and use the helper tweak!

### How do I install this?
Copy the file: ``me.conorthedev.respringmyi.helper_1.0_iphoneos-arm.deb`` from ``./respringmyihelper/packages/`` to your iDevice, install with Filza or ``dpkg -i (filename)``

Then, open Xcode, select your team for signing and run!

#### Other Links
- [Twitter](https://twitter.com/ConorTheDev)
- [Donate](https://ko-fi.com/ConorTheDev)

*Enjoy :p*
