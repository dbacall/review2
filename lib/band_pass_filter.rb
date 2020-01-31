
def lower_limit_filter(limit, sounds)
  sounds.map { |sound| sound = limit if sound < limit }
end
