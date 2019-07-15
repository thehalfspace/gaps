###############################
##  Initialization for GAPS
###############################

include("$(@__DIR__)/setup.jl")
include("$(@__DIR__)/params.jl")

function initialize(P::params)
    alpha::Array{Int64,2} = rand(0:64, P.pop_size,P.M)
    beta::Array{Int64,2} = rand(0:64, P.pop_size,P.M)
    gamma::Array{Int64,2} = rand(0:64, P.pop_size,P.M)
    phi::Array{Int64,2} = rand(0:64, P.pop_size,P.M)

    return encoded_params(alpha,beta,gamma,phi)
end


# digits(int, base=2,pad=6)[end:-1:1]

function decode(S::encoded_params, P::params)

    N = 2^(P.bits) - 1

    alpha_d = (2π/N).*S.alpha
    beta_d = (π/(2*N)).*S.beta
    gamma_d = (2π/N).*S.gamma
    phi_d = (1/N).*S.phi

    return stress_params(alpha_d, beta_d, gamma_d, phi_d)
end
