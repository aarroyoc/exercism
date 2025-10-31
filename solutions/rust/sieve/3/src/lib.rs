use std::collections::VecDeque;

pub fn primes_up_to(upper_bound: u64) -> Vec<u64> {
    let mut nums: VecDeque<u64> = (2..=upper_bound).collect();
    let mut primes = vec![];

    while let Some(prime) = nums.pop_front() {
        primes.push(prime);
        nums.retain(|x| !multiple_of(prime, *x, upper_bound));
    }
    primes
}

fn multiple_of(n: u64, x: u64, upper_bound: u64) -> bool {
    let mut i = n;
    while i <= upper_bound {
        if i == x {
            return true;
        }
        i += n;
    }
    false
}
