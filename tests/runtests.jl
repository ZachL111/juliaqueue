include("../src/Policy.jl")
using .Policy

signal_case_1 = Signal(67, 80, 13, 6, 13)
@assert score(signal_case_1) == 191
@assert classify(signal_case_1) == "accept"
signal_case_2 = Signal(94, 98, 26, 9, 6)
@assert score(signal_case_2) == 178
@assert classify(signal_case_2) == "accept"
signal_case_3 = Signal(84, 87, 26, 6, 11)
@assert score(signal_case_3) == 185
@assert classify(signal_case_3) == "accept"
