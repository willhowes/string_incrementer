require 'increment_string'

describe '#increment_string' do
  it 'adds a 1 to a string if no number included' do
    expect(increment_string('foo')).to eq('foo1')
  end
end
