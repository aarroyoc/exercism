pub fn collatz(n: u64) -> Option<u64> {
    if n < 1 {
        None
    } else {
        let mut iterations = 0;
        let mut n = n;
        while n > 1 {
            if n % 2 == 0 {
                n /= 2;
            } else {
                n = (n * 3) + 1;
            }
            iterations += 1;
        }
        Some(iterations)
    }
}
