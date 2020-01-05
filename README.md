## respringmyi

### How does it work?
respringmyi works by using the [WatchConnectivity Framework](https://developer.apple.com/documentation/watchconnectivity), when you press the button on your Apple Watch, it sends a message to the iDevice, when the iDevice gets this message it sends a darwin notification to the tweak (which is allowed to spawn processes **our app isn't because it is sandboxed**, and that runs: ``killall -9 SpringBoard``.

### How do I install this?
Copy the file: ``me.conorthedev.respringmyi.helper_1.0_iphoneos-arm.deb`` from ``./respringmyihelper/packages/`` to your iDevice, install with Filza or ``dpkg -i (filename``

Then, open Xcode, select your team for signing and run!

#### Other Links
- [Twitter](https://twitter.com/ConorTheDev)
- [Donate](https://ko-fi.com/ConorTheDev)

*Enjoy :p*
