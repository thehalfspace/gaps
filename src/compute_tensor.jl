function fitness(S::stress_params, P::params)

    for i in 1:P.M
        for j in 1:P.pop_size

            reduced_tensor = [1 0 0; 0 S.phi[j,i] 0; 0 0 0]
            stress_tensor = compute_stress_tensor(S.alpha[j,i], S.beta[j,i],
                                                  S.gamma[j,i], reduced_tensor)


        end
    end



end

function compute_stress_tensor(α, β, γ, reduced_tensor)
    z = [cos(γ) -sin(γ) 0; sin(γ) cos(γ) 0; 0 0 1]
    y = [cos(β) 0 sin(β); 0 1 0; -sin(β) 0 cos(β)]
    x = [1 0 0; 0 cos(α) -sin(α); 0 sin(α) cos(α)]
    
    # transformation matrix
    t_matrix = z*(y*x)

    return x,y,z

    return t_matrix*reduced_tensor*t_matrix'
end

function read_data()
    data = CSV.read("$(@__DIR__)/../data/demo.csv")
