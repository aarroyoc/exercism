const WINK: &str = "wink";
const DOUBLE_BLINK: &str = "double blink";
const CLOSE_YOUR_EYES: &str = "close your eyes";
const JUMP: &str = "jump";

pub fn actions(n: u8) -> Vec<&'static str> {
    let mut cmds = vec![];
    if n & 0b00001 > 0 {
        cmds.push(WINK);
    }
    if n & 0b00010 > 0 {
        cmds.push(DOUBLE_BLINK);
    }
    if n & 0b00100 > 0 {
        cmds.push(CLOSE_YOUR_EYES);
    }
    if n & 0b01000 > 0 {
        cmds.push(JUMP);
    }
    if n & 0b10000 > 0 {
        cmds.reverse()
    }
    cmds
}
