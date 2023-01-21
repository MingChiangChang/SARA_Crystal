module SARA_Crystal
using CrystalShift
using CrystalShift: OptionalPhases, get_fraction
using CrystalTree
using CrystalTree: Lazytree, get_probabilities, TreeSearchSettings
using GaussianDistributions
using GaussianDistributions: input_transformation
using CovarianceFunctions: EQ, Lengthscale, MaternP, AbstractKernel
using BackgroundSubtraction: mcbl

using PyCall
using ForwardDiff

using Plots

using Base.Threads

include("nmf.jl")
include("temperature_profile.jl")
include("striptoglobalsettings.jl")
include("stripe_to_global.jl")

end # module SARA_Crystal
