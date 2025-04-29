# Simple CLI tool to move your mouse to a specified position without animation for macOS.

### Motivation:
I was not able to run [cliclick](https://github.com/BlueM/cliclick) on macOS 15.x (neither it was able to be installed via `brew`, nor the binary from Releases on GitHub worked – I've been geetting `Killed: 9` error right after running it, so decided to write my own tool.<br>
_I guess the `Killed: 9` error was appearing due to unsigned binary (developer account required). My binary is signed, so you will be easily able to run it._

I needed some CLI tool for moving my mouse because i wanted to make a tool for automating the process of creating screenshots for my macOS application.
I'm writing the screenshot making automation in AppleScript and it does not natively suppport the mouse movement.
To achieve the mouse movement with AppleScript you can run some external shell script (which is why I made this binary).

### How to run it:
1. Download the binary from the latest release
2. Convenience-wise i recommend you to put the binary to `/usr/local/bin/` on your macOS, so you don't need to write the full path to this tool each time you run it. You can do it like this: `sudo cp /path/to/downloaded/mouset /usr/local/bin/`
3. To get current coordinates run `mouset` (or full path to the binary. You will likely need the binary to Accessibility in System Settings.
4. To put your mouse to some position, just run `mouset {x} {y}`. Fox example: `mouset 100 400`, which will move your mouse to x: 100 and y: 100 position.

### Want to build it yourself?
1. Download this repository
2. Open termianl
3. `cd` into the downloaded repo like this: `cd /Users/kopyl/Downloads/mouset`
4. Run `swift run mouset` to just run it
5. Run `swift build` to just build it for debugging
6. Run `swift build -c release --show-bin-path` to build it for release (like i did). It will show you the path to the binary

### Want to share it to friends?
You need to ~~suffer~~ sign it first with a developer account (which costs $99 a year 🤬). But in case you have it (like i do), here are the steps to do it:
1. First you must generate a certificate. To do it:<br>
  1.1. Open 'Keychain Access.app'. To do it:<br>
   1.1.1. You might open Spotlight, type 'Keychain' and select 'Keychain Access.app'. Or find it somewhere in `'/System/Library/CoreServices/Applications/Keychain Access.app'`<br>
 1.2. In the top left corner of the screen press 'Keychain Access' -> 'Certificate Assistant' -> 'Request a Certificate From a Certificate Authority'<br>
 1.3. Enter the email<br>
 1.4. Save the certificate to disk<br>
2. Then you must download another certificate:<br>
  2.1. First go to https://developer.apple.com/account<br>
  2.2. Navigate to: Certificates, Identifiers & Profiles → Certificates<br>
  2.3. Click ➕ → Developer ID Application → Continue<br>
  2.4. Upload the certificate you got from the 'Certificate Assistant'<br>
  2.5. Download the certificate, double click it and make sure it appears in the 'Keychain Access' app on the 'My certificates' tab.<br>
  2.6. Now in Keychain Access, under "My Certificates", you should see something like `Developer ID Application: Your Name (TEAMID)`. You need to save that ID for later<br>
3. Now create App-specific password on https://account.apple.com/account/manage , save the name you give (for example "codesign") and the password you get <br>
4. Create zip archive of the app like this: `zip -r mouset.zip mouset`<br>
5. Send the archive to Apple Notary Service:<br>
   
