pub fn raindrops(n: u32) -> String {
    let mut text = String::new();
    if n % 3 == 0 {
        text.push_str("Pling");
    }
    if n % 5 == 0 {
        text.push_str("Plang");
    }
    if n % 7 == 0 {
        text.push_str("Plong");
    }
    return if text.len() == 0 {
        format!("{}", n)
    } else {
        text
    }
}
