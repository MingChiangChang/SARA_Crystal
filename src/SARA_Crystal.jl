module SARA_Crystal
using CrystalShift
using CrystalShift: OptionalPhases, get_fraction, OptimizationSettings
using CrystalShift: uncertainty, var_lognormal
using CrystalTree
using CrystalTree: Lazytree, get_probabilities, TreeSearchSettings
using GaussianDistributions
using GaussianDistributions: input_transformation
using CovarianceFunctions: EQ, Lengthscale, MaternP, AbstractKernel
using BackgroundSubtraction: mcbl
using OptimizationAlgorithms
using OptimizationAlgorithms: LevenbergMarquart, LevenbergMarquartSettings

using PyCall
using ForwardDiff
using Statistics
using Measurements
using Combinatorics

using Plots

using Base.Threads


const STD_THRESHOLD = .03
const TOP_PROB_THRESHOLD = .1
const TOP_FIVE_DIFF_THRESHOLD = .05
const DEFAULT_TOP_NODE_COUNT = 5
const DEFAULT_RES_THRESH = 1.

include("util.jl")
include("nmf.jl")
include("temperature_profile.jl")
include("striptoglobalsettings.jl")
include("stripe_to_global.jl")

end # module SARA_Crystal
