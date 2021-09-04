RSpec.describe EncodingIroha do
  it 'can be encoded with Encoding::IROHA' do
    bytes = 'いろは'.encode(Encoding::IROHA).bytes
    expected = [128, 129, 130]
    expect(bytes).to eq expected
  end

  it 'cannot be converted should raise an exception' do
    expect { 'α'.encode(Encoding::IROHA) }.to raise_error(Encoding::UndefinedConversionError)
  end

  it 'should be valid encoding' do
    expect("\x80\x81\x82".force_encoding(Encoding::IROHA).valid_encoding?).to be_truthy
  end

  it 'can find Encoding::IROHA' do
    expect(Encoding.find('IROHA')).to be Encoding::IROHA
  end

  it 'should not dummy encoding' do
    expect(Encoding::IROHA.dummy?).to be_falsey
  end
end
