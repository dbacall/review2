require_relative '../lib/band_pass_filter.rb'

describe '#lower_limit_filter' do
  it 'changes the sound frequency to the lower limit for one sound wave' do
    expect(lower_limit_filter(80, [70])).to eq [80]
  end

  it 'changes the sound frequency to teh lower limit for two sound waves' do
    expect(lower_limit_filter(80, [70, 60])).to eq [80, 80]
  end

  it 'changes the sound frequency to teh lower limit for two sound waves' do
    expect(lower_limit_filter(80, [70, 60, 90])).to eq [80, 80, 90]
  end
end

describe '#higher_limit_filter' do
  it 'changes the sound frequency to the higher limit for one sound wave' do
    expect(higher_limit_filter(110, [120])).to eq [110]
  end

  it 'changes the sound frequency to the higher limit for one sound wave' do
    expect(higher_limit_filter(110, [120, 100])).to eq [110, 100]
  end
end

describe '#band_pass_filter' do
  it 'changes the sound frequency of all types of waves' do
    expect(band_pass_filter([60, 80, 120, 100], 70, 110)).to eq [70, 80, 110, 100]
  end

  it "doesn't change any frequencies when all within the limits" do
    expect(band_pass_filter([80, 80, 100, 100], 70, 110)).to eq [80, 80, 100, 100]
  end
end
