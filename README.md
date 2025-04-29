# Simple CLI tool to move your mouse to a specified position without animation for macOS.

#### Motivation:
I was not able to run [cliclick](https://github.com/BlueM/cliclick) on macOS 15.x (neither it was able to be installed via `brew`, nor the binary from Releases on GitHub worked – I've been geetting `Killed: 9` error right after running it, so decided to write my own tool.

### How to run it:
1. Download the binary from the latest release
2. Convenience-wise i recommend you to put the binary to `/usr/local/bin/` on your macOS, so you don't need to write the full path to this tool each time you run it. You can do it like this: `sudo cp /path/to/downloaded/mouset /usr/local/bin/`
3. To get current coordinates run `mouset` (or full path to the binary. You will likely need the binary to Accessibility in System Settings.
4. To put your mouse to some position, just run `mouset {x} {y}`. Fox example: `mouset 100 400`, which will move your mouse to x: 100 and y: 100 position.
