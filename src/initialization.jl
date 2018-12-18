###############################
##  Initialization for GAPS
###############################

include("$(@__DIR__)/setup.jl")
include("$(@__DIR__)/params.jl")

function initialization(P::params)
    alpha::Array{Int64,2} = rand(0:64, P.pop_size,P.M)
    beta::Array{Int64,2} = rand(0:64, P.pop_size,P.M)
    gamma::Array{Int64,2} = rand(0:64, P.pop_size,P.M)
    phi::Array{Int64,2} = rand(0:64, P.pop_size,P.M)

    return encoded_params(alpha,beta,gamma,phi)
end

