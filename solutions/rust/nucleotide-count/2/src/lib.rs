use std::collections::HashMap;

pub fn count(nucleotide: char, dna: &str) -> Result<usize, char> {
    if !"ACGT".contains(nucleotide) {
        return Err(nucleotide)
    }
    let mut times = 0;
    for c in dna.chars() {
        if c == nucleotide {
            times += 1;
        }
        if !"ACGT".contains(c){
            return Err(c)
        }
    }
    Ok(times)
}

pub fn nucleotide_counts(dna: &str) -> Result<HashMap<char, usize>, char> {
    let nucleotides = ['A', 'C', 'G', 'T'];
    nucleotides
      .into_iter()
      .map(|nucleotide| (nucleotide, count(nucleotide, dna)))
      .try_fold(HashMap::new(), |mut m, (nucleotide, count)| {
          match count {
              Ok(c) => {
                  m.insert(nucleotide, c);
                  Ok(m)
              },
              Err(x) => Err(x),
          }
      })
}
