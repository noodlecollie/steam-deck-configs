These files are for the Harry Potter and the Philosopher's Stone PC game.

`UserDefault.ini` is the vanilla configuration file from the game's install, and the `User.ini` file is this file customised to work best for the Steam Deck. It should be copied to `Documents/Harry Potter/User.ini`.

## Mapping Info

Beginning with the `Mouse Only` controller config is a good start, and makes the game playable. Subsequent investigation has been around whether it's possible to use the joysticks as analogue inputs to the game.

`JoyPovUp/Down/Left/Right` is recognised, but the Steam Deck controller config must set the DPad behaviour to "Directional Pad" and explicitly map each button to "DPad Up/Down/Left/Right".

The game config's references to strafing (ie. `StrafeLeft`, `StrafeRight`, and the `aStrafe` axis) do not seem to function.

`JoyX` and `JoyY` appear to correspond to the Steam Deck's left joystick. `JoyV` is the inverted right joystick axis, and none of the other joystick axes seem to work. Therefore, there is only really one usable analogue joystick available to the game. This is probably better used for movement, as aim does not appear to respond pleasingly to analogue inputs.

The ABXY buttons are also recognised, and must also be mapped to gamepad buttons in the Steam Deck controller config.

* `Joy1` is `A`
* `Joy2` is `B`
* `Joy3` is `X`
* `Joy4` is `Y`
