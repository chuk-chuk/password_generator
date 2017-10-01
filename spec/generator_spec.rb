require 'generator'

describe Generator do
  subject(:generator) { described_class.new(length, uppercase, lowercase, number, special) }
  let(:length) { 5 }
  let(:uppercase) { false }
  let(:lowercase) { false }
  let(:number) { true }
  let(:special) { true }

  describe "initialized" do
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

  it "can store options in the options array" do
    generator.add_to_options
    expect(generator.options).not_to be_empty
  end

  it "can store numbers in the options array" do
    generator.add_to_options
    expect(generator.options).to include [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  it "can store special characters in the options array" do
    generator.add_to_options
    expect(generator.options).to include "!"
  end
end
