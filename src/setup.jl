###############################
##  Setup file:
###############################

# Mutable data structure for the four encoded variables
# that uniquely define a stress tensor
mutable struct encoded_params
    alpha::Array{Int64,2}
    beta::Array{Int64,2}
    gamma::Array{Int64,2}
    phi::Array{Int64,2}

    function encoded_params(alpha, beta, gamma, phi)
        new(alpha, beta, gamma, phi)
    end
end

mutable struct stress_params
    alpha::Array{Float64,2}
    beta::Array{Float64,2}
    gamma::Array{Float64,2}
    phi::Array{Float64,2}

    function stress_params(alpha, beta, gamma, phi)
        new(alpha, beta, gamma, phi)
    end
end

# Function to multiply and divide stress_params with floating numbers
#  import Base.*
#  import Base./

#  function Base.:*(a::stress_params, b::Real)
    #  alpha = b*a.alpha
    #  beta = b*a.beta
    #  gamma = b*a.gamma
    #  phi = b*a.phi

    #  stress_params(alpha,beta,gamma,phi)
#  end






