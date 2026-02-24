pub fn factors(number: u64) -> Vec<u64> {
    let mut f = vec![];
    let mut n = number;
    let mut current_factor = 2;
    while n > 1 {
        if n % current_factor == 0 {
            f.push(current_factor);
            n /= current_factor;
        } else {
            current_factor += 1;
        }
    }
    f
}
