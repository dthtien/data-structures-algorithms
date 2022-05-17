#!/usr/bin/env ruby
# by dthtien

OUTPUT_FORMAT = '%.4f'

def transform_list(weights, values)
  values.zip(weights).sort do |i1, i2|
    i1.first / i1.last <=> i2.first / i2.last
  end.reverse
end

def get_optimal_value(capacity, weights, values)
  opt_value = 0.0
  items = transform_list(weights, values)

  items.each do |item|
    return opt_value if capacity.zero?

    value, weight = item
    min_weight = [weight, capacity].min
    opt_value += min_weight * (value.to_f / weight)
    capacity -= min_weight
  end

  opt_value
end

if __FILE__ == $0
  data = STDIN.read.split.map(&:to_i)
  n, capacity = data[0, 2]
  values = data.values_at(*(2..2 * n).step(2))
  weights = data.values_at(*(3..2 * n + 1).step(2))

  puts format(
    OUTPUT_FORMAT,
    get_optimal_value(capacity, weights, values)
  )
end
