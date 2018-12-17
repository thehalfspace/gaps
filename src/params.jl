###############################
##  Parameters file:
###############################

# Create parameters data type: immutable
struct params
    pop_size::Int
    noi::Int
    bits::Int
    elite::Float64
    M::Int

    # Initialize these parameters
    function params(pop_size,noi,bits,elite,M)
        new(pop_size,noi,bits,elite,M)
    end
end

