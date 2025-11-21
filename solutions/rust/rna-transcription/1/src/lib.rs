#[derive(Debug, PartialEq, Eq)]
pub struct Dna {
    strand: String,
}

#[derive(Debug, PartialEq, Eq)]
pub struct Rna {
    strand: String,
}

impl Dna {
    pub fn new(dna: &str) -> Result<Dna, usize> {
        for (i, c) in dna.chars().enumerate() {
            if c != 'G' && c != 'C' && c != 'T' && c != 'A' {
                return Err(i)
            }
        }
        Ok(Dna { strand: dna.to_owned() })
    }

    pub fn into_rna(self) -> Rna {
        let rna_strand = self.strand
            .chars()
            .map(|c| match c {
                'G' => 'C',
                'C' => 'G',
                'T' => 'A',
                'A' => 'U',
                _ => panic!("should not happen if DNA has been validated before")
            })
            .collect::<String>();
        Rna { strand: rna_strand }
    }
}

impl Rna {
    pub fn new(rna: &str) -> Result<Rna, usize> {
        for (i, c) in rna.chars().enumerate() {
            if c != 'G' && c != 'C' && c != 'U' && c != 'A' {
                return Err(i)
            }
        }
        Ok(Rna { strand: rna.to_owned() })    
    }
}
