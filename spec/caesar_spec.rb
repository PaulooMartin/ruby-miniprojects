require './caesar-cipher'

describe '#caesar_cipher' do
  it 'applies cipher on lowercase letters' do
    phrase = 'abc'
    expected_result = 'klm'
    expect(caesar_cipher(phrase, 10)).to eql(expected_result)
  end

  it 'applies cipher on uppercase letters' do
    phrase = 'ABC'
    expected_result = 'KLM'
    expect(caesar_cipher(phrase, 10)).to eql(expected_result)
  end

  it 'applies cipher on both uppercase and lowercase letters' do
    phrase = 'aBCd'
    expected_result = 'kLMn'
    expect(caesar_cipher(phrase, 10)).to eql(expected_result)
  end

  it 'ignores spaces between letters' do
    phrase = 'ab c d'
    expected_result = 'kl m n'
    expect(caesar_cipher(phrase, 10)).to eql(expected_result)
  end

  it 'ignores special characters and numbers' do
    phrase = '123, ab#d $c'
    expected_result = '123, kl#n $m'
    expect(caesar_cipher(phrase, 10)).to eql(expected_result)
  end

  it 'accepts an abritrary key(number) for shifting' do
    phrase = 'My pet is somewhat a RI$H boiiii! Yeah.'
    expected_result = 'Yk bqf ue eayqitmf m DU$T nauuuu! Kqmt.'
    expect(caesar_cipher(phrase, 1000)).to eql(expected_result)
  end
end
