@info "struct zonotype"
struct zonotype
    c::Matrix
    g::Matrix
end

using EarCut, GeometryBasics
a = Circle(Point2f0(0), 0.5f0)
b = Circle(Point2f0(0), 1f0)
polygon = [decompose(Point2f0, b), decompose(Point2f0, a)] # some points defining a polygon. Must be a Vector{Vector{Point}}
triangle_faces = triangulate(polygon)

# then display with e.g. Makie like this:
using Makie, Colors

v = vcat(polygon...)
msh = GeometryBasics.Mesh(v, triangle_faces)

scene = Makie.mesh(v, triangle_faces; color = 1:length(v), shading = false, scale_plot = false, show_axis = false)