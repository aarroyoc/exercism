pub fn nth(n: u32) -> u32 {
    let mut current_prime = 0;
    let mut current_number = 2;
    while current_prime < n {
        current_number += 1;
        if is_prime(current_number) {
            current_prime += 1;
        }
    }
    current_number
}

fn is_prime(n: u32) -> bool {
    for i in 2..n.isqrt()+1 {
        if n % i == 0 {
            return false;
        }
    }
    true
}