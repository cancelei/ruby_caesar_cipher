require_relative '../encryption' # Adjust the path according to your project structure

describe 'caesar_cipher' do
  it 'shifts letters correctly with positive shift factor' do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end

  it 'keeps the same case' do
    expect(caesar_cipher("Hello World", 2)).to eql("Jgnnq Yqtnf")
  end

  it 'wraps from z to a' do
    expect(caesar_cipher("Zebra", 1)).to eql("Afcsb")
  end

  it 'handles negative shift factor' do
    expect(caesar_cipher("Bmfy f xywnsl!", -5)).to eql("What a string!")
  end

  it 'does not shift non-letter characters' do
    expect(caesar_cipher("1234!?", 3)).to eql("1234!?")
  end

  it 'handles large shift factors' do
    expect(caesar_cipher("abc", 26)).to eql("abc") # Shift factor equal to alphabet size
    expect(caesar_cipher("abc", 27)).to eql("bcd") # Shift factor larger than alphabet size
  end
end
