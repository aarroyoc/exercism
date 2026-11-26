function z(x, y)
    complex(x, y)
end

function euler(r, θ)
    r*exp(1im * θ)
end

function rotate(x, y, θ)
    z = complex(x, y)
    reim(abs(z)*exp(1im * (angle(z) + θ)))
end

function rdisplace(x, y, r)
    z = complex(x, y)
    reim((r+abs(z))*exp(1im * angle(z)))
end

function findsong(x, y, r, θ)
    x1, y1 = rdisplace(x, y, r)
    rotate(x1, y1, θ)
end
