struct Coord
    x::UInt16
    y::UInt16
end

@kwdef struct Plot
    bottom_left::Coord
    top_right::Coord
end

function is_claim_staked(claim::Plot, register::Set{Plot})
    claim in register
end

function stake_claim!(claim::Plot, register::Set{Plot})
    if is_claim_staked(claim, register)
        false
    else
        push!(register, claim)
        true
    end
end

function get_longest_side(claim::Plot)
    max(
        abs(Int(claim.bottom_left.x) - Int(claim.top_right.x)),
        abs(Int(claim.bottom_left.y) - Int(claim.top_right.y))
    )
end

function get_claim_with_longest_side(register::Set{Plot})::Set{Plot}
    m = 0
    s = Set{Plot}()
    for claim in register
        l = get_longest_side(claim)
        if l > m 
            s = Set{Plot}([claim])
            m = l
        elseif get_longest_side(claim) == m
            push!(s, claim)
        end
    end
    s
end

        
