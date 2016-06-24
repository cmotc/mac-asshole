# mac-asshole
Bluetooth DOS against Mac OSX, possible due to problematic default discoverability settings.

See:   
  * [r/applehelp](https://www.reddit.com/r/applehelp/comments/2rs916/turn_off_discoverability_but_leave_bluetooth_on/)
    + Turn off 'Bluetooth Sharing' in the 'Sharing' Preferences pane. Once sharing is off the Mac is no longer discoverable, unless you have the 'Bluetooth Preference pane' window open. To check 'Discoverability' make sure that the Bluetooth Preference pane is not open, then  hold down 'option' and click on the Bluetooth menu. You will see that 'Discoverable' is 'off'.
  * [Apple Forums](https://discussions.apple.com/thread/5616775?start=0&tstart=0)
  * [Apple Stack Exchange](http://apple.stackexchange.com/questions/151481/why-is-my-macbook-visibile-on-bluetooth-after-yosemite-install) :blames it on the "Handoff" anti-feature.

All it does is send a buttload of auth requests until you ctrl-c. The hardest part was finding
a way to actually do it from a Mac. [Not even a little kidding.](http://apple.stackexchange.com/questions/132407/how-to-list-bluetooth-devices-from-command-line) Not everyone likes a background
process managing their connections all the time. But it turns out that you can just talk directly
to the daemon, so for this purpose it works. I haven't given it a way to exit. Just ctrl-c out. 
Pretty limited scope, not an exploit, more just a way of being a butthole to people who fail at
configuration.

Don't leak signal, guys. People are buttholes.

to be a butthole, run the command like this:

        ./btdos.sh

or, pass it the MAC address of the bluetooth device you want to DOS.

        ./btdos.sh $MAC

Just to be clear, I don't condone being a butthole. I also don't condone misconfigured bluetooth
discoverability. Thus, I can comfortably remind you that whatever you do with this is your own
legal responsibility.

Please don't be a butthole.

*may require root on some machines, especially Macs. See:*

  * [Locally exploitable backdoor to root API](https://truesecdev.wordpress.com/2015/04/09/hidden-backdoor-api-to-root-privileges-in-apple-os-x/)
  * [Stack Echange Question](http://apple.stackexchange.com/questions/180396/how-to-mitigate-cve-2015-1130-hidden-backdoor-with-root-due-to-lack-of-apple-s)
  * [Automatic implementation of exploit on Github as USB HID payload](https://github.com/hak5darren/USB-Rubber-Ducky/wiki/Payload---OSX-Root-Backdoor)

For help getting root.
