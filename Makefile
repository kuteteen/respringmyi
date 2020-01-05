build:
	xcodebuild clean build -project ./respringmyi.xcodeproj CODE_SIGNING_ALLOWED=NO
	ldid -S./respringmyi/respringmyi.entitlements ./build/Release-iphoneos/respringmyi.app/respringmyi

package:
	rm -rf ./deb/Applications/respringmyi.app
	cp -vr ./build/Release-iphoneos/respringmyi.app ./deb/Applications/respringmyi.app/
	dpkg -b deb

install:
	cat deb.deb | ssh root@$(THEOS_DEVICE_IP) "cat > /tmp/_.deb; dpkg -i /tmp/_.deb; rm /tmp/_.deb; su mobile -c uicache"

remove:
	ssh root@$THEOS_DEVICE_IP "rm -rf /Applications/respringmyi.app; su mobile -c uicache"

clean:
	xcodebuild clean
	rm -rf build
	rm -f deb.deb
	rm -rf deb/Applications/*

compile:
	make clean build package install
