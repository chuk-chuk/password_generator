require 'generator'

describe Generator do
  subject(:generator) { described_class.new(length, uppercase, lowercase, number, special) }
  let(:length) { 5 }
  let(:uppercase) { true }
  let(:lowercase) { true }
  let(:number) { true }
  let(:special) { false }


  it "initialized with length" do
    expect(subject.length).to eq length
  end

  it "initialized with uppercase" do
    expect(subject.uppercase).to eq uppercase
  end

  it "initialized with special" do
    expect(subject.special).to eq special
  end

  it "starts with empty options array" do
    expect(subject.options).to eq []
  end

end
