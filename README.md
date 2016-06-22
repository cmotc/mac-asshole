# mac-asshole
Bluetooth DOS against Mac OSX, possible due to problematic default discoverability settings.

All it does is send a shitload of auth requests until you ctrl-c. The hardest part was finding
a way to actually do it from a Mac. Not even a little kidding. Not everyone likes a background
process managing their connections all the time. But it turns out that you can just talk directly
to the daemon, so for this purpose it works. I haven't given it a way to exit. just ctrl-c out.
For now, it tries to DOS everybody in range, but the next feature it's getting is the ability
to DOS a specific device. Pretty limited scope, not an exploit, more just a way of being a
butthole to people who fail at configuration.

Don't leak signal, guys. People are buttholes.

to be a butthole, run the command like this:

        ./btdos.sh

Just to be clear, I don't condone being a butthole. I also don't condone misconfigured bluetooth
discoverability. Thus, I can comfortably remind you that whatever you do with this is your own
legal responsibility.

Please don't be a butthole.