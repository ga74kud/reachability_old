include("zonotypes.jl")

struct reachability
    init::zonotype
end
@info "matrices"
c=[
        1 0; 
        0 1; 
        0 0;
        0 0]
g=[
            1 0; 
            0 1; 
            0 0;
            0 0]
zono_a=zonotype(c, g)
print(zono_a)


            
            
            
            
            
            