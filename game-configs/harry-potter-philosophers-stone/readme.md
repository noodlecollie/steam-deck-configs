These files are for the Harry Potter and the Philosopher's Stone PC game.

`UserDefault.ini` is the vanilla configuration file from the game's install, and the `User.ini` file is this file customised to work best for the Steam Deck. It should be copied to `Documents/Harry Potter/User.ini`.

The controller configuration was set up on the Steam deck and found after export in `/home/deck/.steam/steam/userdata/{userID}/config/controller_configs/apps/2774830942/FVAA2200217F/33947318/2832492684/`.

## Mapping Info

Beginning with the `Mouse Only` controller config is a good start, and makes the game playable. Subsequent investigation has been around whether it's possible to use the joysticks as analogue inputs to the game.

`JoyPovUp/Down/Left/Right` is recognised, but the Steam Deck controller config must set the DPad behaviour to "Directional Pad" and explicitly map each button to "DPad Up/Down/Left/Right".

`JoyX` and `JoyY` appear to correspond to the Steam Deck's left joystick. `JoyV` is the inverted right joystick axis, and none of the other joystick axes seem to work. Therefore, there is only really one usable analogue joystick available to the game. This is probably better used for movement, as aim does not appear to respond pleasingly to analogue inputs.

The game config's references to strafing (ie. `StrafeLeft`, `StrafeRight`, and the `aStrafe` axis) do not seem to function in general, but it turns out are required solely for the section where Fluffy is put to sleep with the flute. If strafing is not configured, this section of the game cannot be completed. The current config for strafing was put together after I'd completed the game by temporarily remapping the DPad left/right buttons to the left and right arrow keys (whose default config includes strafing), so whether strafing works properly when mapped to the left joystick is currently untested. To test it properly, I'd have to play through 95% of the game again to get to Fluffy, which I can't be bothered to do right now.

The ABXY buttons are recognised, and must also be mapped to gamepad buttons in the Steam Deck controller config.

* `Joy1` is `A`
* `Joy2` is `B`
* `Joy3` is `X`
* `Joy4` is `Y`
