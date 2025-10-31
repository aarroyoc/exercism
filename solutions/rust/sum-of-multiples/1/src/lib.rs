use std::collections::HashSet;

pub fn sum_of_multiples(limit: u32, factors: &[u32]) -> u32 {
    let mut nums = HashSet::new();
    for factor in factors {
        let multiple_set = multiples_of(*factor, limit);
        nums = nums.union(&multiple_set).copied().collect();
    }
    nums.into_iter().sum()
}

fn multiples_of(n: u32, limit: u32) -> HashSet<u32> {
    let mut set: HashSet<u32> = HashSet::new();
    if n < 1 {
        return set;
    }
    
    let mut x = n;
    while x < limit {
        set.insert(x);
        x += n;
    }
    set
}