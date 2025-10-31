use std::collections::VecDeque;

pub fn primes_up_to(upper_bound: u64) -> Vec<u64> {
    let mut nums: VecDeque<u64> = (2..=upper_bound).collect();
    let mut primes = vec![];

    while let Some(prime) = nums.pop_front() {
        primes.push(prime);
        nums.retain(|x| x % prime != 0);
    }
    primes
}
