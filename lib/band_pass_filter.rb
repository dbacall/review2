
def band_pass_filter(sounds, lower_limit, higher_limit)
  higher_limit_filter(higher_limit, lower_limit_filter(lower_limit, sounds))
end

def lower_limit_filter(limit, sounds)
  sounds.map { |sound| 
    if sound == nil
      sound
    elsif sound < limit 
      sound = limit
    else
      sound
    end
  }
end

def higher_limit_filter(limit, sounds)
  sounds.map { |sound| 
    if sound == nil
      sound
    elsif sound > limit 
      sound = limit
    else
      sound
    end
  }
end
