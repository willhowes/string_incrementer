require 'increment_string'

describe '#increment_string' do
  it 'adds a 1 to a string if no number included' do
    expect(increment_string('foo')).to eq('foo1')
  end

  it 'increments the number by 1 if already a number at end of string' do
    expect(increment_string('foo1')).to eq('foo2')
  end

  it 'increments the number by 1 for higher numbers than 1' do
    expect(increment_string('foo9')).to eq('foo10')
  end

  it 'increments the number when the number is more than one digit' do
    expect(increment_string('foo23')).to eq('foo24')
  end

  it 'increments the number when there are trailing 00s' do
    expect(increment_string('foo0042')).to eq('foo0043')
  end

  it 'increments the number and removes trailing 0s where number of digit increases' do
    expect(increment_string('foo099')).to eq('foo100')
  end

  it 'correctly implements when the string has numbers but not at the end' do
    expect(increment_string('f00bar')).to eq('f00bar1')
  end

end
