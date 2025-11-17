pub fn is_armstrong_number(num: u32) -> bool {
    let ds = digits(num);
    let len = ds.len() as u32;

    let mut armstrong = 0;
    for d in ds {
        armstrong += u32::pow(d, len);
    }
    armstrong == num
}

fn digits(mut num: u32) -> Vec<u32> {
    let mut d = Vec::new();
    while num > 9 {
        let digit = num % 10;
        num = num / 10;
        d.push(digit);
    }
    d.push(num);
    d
}
