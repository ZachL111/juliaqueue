module Policy

export Signal, score, classify

struct Signal
    demand::Int
    capacity::Int
    latency::Int
    risk::Int
    weight::Int
end

const threshold = 169
const risk_penalty = 6
const latency_penalty = 3
const weight_bonus = 4

score(signal::Signal) = signal.demand * 2 + signal.capacity + signal.weight * weight_bonus -
    signal.latency * latency_penalty - signal.risk * risk_penalty

classify(signal::Signal) = score(signal) >= threshold ? "accept" : "review"

end
