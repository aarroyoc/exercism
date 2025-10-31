#[derive(Debug, PartialEq, Eq)]
pub enum Classification {
    Abundant,
    Perfect,
    Deficient,
}

pub fn classify(num: u64) -> Option<Classification> {
    if num < 1 {
        return None;
    }
    
    let aliquot_sum: u64 = factors(num).into_iter().sum();

    if aliquot_sum == num {
        Some(Classification::Perfect)
    } else if aliquot_sum > num {
        Some(Classification::Abundant)
    } else {
        Some(Classification::Deficient)
    }
}

fn factors(num: u64) -> Vec<u64> {
    (1..num).filter(|x| num % x == 0).collect()
}