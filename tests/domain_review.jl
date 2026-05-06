include("../src/DomainReview.jl")
using .DomainReview

item = ReviewItem(42, 32, 30, 92)
@assert score(item) == 118
@assert lane(item) == "watch"
