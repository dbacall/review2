require_relative '../lib/band_pass_filter.rb'

describe '#lower_limit_filter' do
  it 'changes the sound frequency to the lower limit for one sound wave' do
    expect(lower_limit_filter(80, [70])).to eq [80]
  end
end