
def lower_limit_filter(limit, sounds)
  sounds.map { |sound| 
    if sound < limit 
      sound = limit
    else
      sound
    end
  }
end
