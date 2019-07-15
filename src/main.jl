####################################################
####################################################
##   GAPS: GENETIC ALGORITHM FOR POLYPHASE SEPARATION
##         OF FAULT SLIP DATA
##
##   Author: Prithvi Thakur
##   Written in: Julia 1.0.2
##   Last Modified: 12-16-2018
####################################################
####################################################

include("$(@__DIR__)/setup.jl")
include("$(@__DIR__)/params.jl")
include("$(@__DIR__)/initialization.jl")

using Printf
using DelimitedFiles
using LinearAlgebra

P1 = params(10,10,4,1,2)

function main(P::params)
    
    # 1. Initialize as integers
    P_init = initialize(P1)

    # 2. Decode into real values
    P_dec = decode(P2, P)

    # 3. Compute stress tensors and fitness
    
end
