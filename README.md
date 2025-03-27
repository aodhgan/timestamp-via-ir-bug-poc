## Via-IR bug repro

The `time1` variable in `test_Record` is being (perhaps) optimized away incorrectly.

Run `forge test`, will fail by default. This is problematic.
Change to `via-ir=false` in foundry.toml, tests now pass.
Behaviour should/is expected to be identical between these two configurations. 

related: https://github.com/foundry-rs/foundry/issues/4934#issuecomment-1546667682
