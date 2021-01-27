# using GLMakie
# AbstractPlotting.inline!(true)
# points = [Point2f0(cos(t), sin(t)) for t in LinRange(0, 2pi, 20)]
# colors = 1:20
# figure, axis, scatterobject = scatter(points, color = colors, markersize = 15)
# figure

@info "main.jl"

include("reachability.jl")

