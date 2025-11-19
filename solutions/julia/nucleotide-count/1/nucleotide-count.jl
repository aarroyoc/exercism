"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    count = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)
    for c in strand
        if c in "GCAT"
            count[c] += 1
        else
            throw(DomainError(c))
        end
    end
    count
end
