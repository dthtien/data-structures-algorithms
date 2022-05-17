#!/usr/bin/env ruby
# by dthtien

OUTPUT_FORMAT = '%.4f'

def transform_list(weights, values)
  sequence = []
  values.each_with_index do |value, index|
    sequence << [value.to_f, weights[index]]
  end

  sequence.sort { |a, b| a[0] / a[1] <=> b[0] / b[1] }.reverse
end

def get_optimal_value(capacity, weights, values)
  opt_value = 0.0
  transform_list(weights, values).each do |item|
    return opt_value if capacity.zero?

    value, weight = item
    min_weight = [weight, capacity].min
    opt_value += min_weight * value / weight
    capacity -= min_weight
  end

  opt_value
end

if __FILE__ == $0
  data = STDIN.read.split.map(&:to_i)
  n, capacity = data[0, 2]
  values = data.values_at(*(2..2 * n).step(2)).compact
  weights = data.values_at(*(3..2 * n + 1).step(2)).compact

  puts format(
    OUTPUT_FORMAT,
    get_optimal_value(capacity, weights, values)
  )
end
