module DomainReview

export ReviewItem, score, lane

struct ReviewItem
    signal::Int
    slack::Int
    drag::Int
    confidence::Int
end

score(item::ReviewItem) = item.signal * 2 + item.slack + item.confidence - item.drag * 3

function lane(item::ReviewItem)
    value = score(item)
    value >= 140 ? "ship" : value >= 105 ? "watch" : "hold"
end

end
