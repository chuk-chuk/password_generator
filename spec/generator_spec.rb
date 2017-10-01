require 'generator'

describe Generator do
  subject(:generator) { described_class.new(length, uppercase, lowercase, number, special) }
  let(:length) { 5 }
  let(:wrong_length_format) { "a" }
  let(:short_length) { 1 }
  let(:uppercase) { false }
  let(:lowercase) { false }
  let(:number) { true }
  let(:special) { true }
  let(:testing) { "136!!" }

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

  describe "options" do
    before { generator.add_to_options }
    it "can store options in the options array" do
      expect(generator.options).not_to be_empty
    end
    it "can store numbers in the options array" do
      expect(generator.options).to include [1, 2, 3, 4, 5, 6, 7, 8, 9]
    end

    it "can store special characters in the options array" do
      expect(generator.options).to include "!"
    end
  end

  it { is_expected.to respond_to(:generate_password) }

  describe "errors" do
    it "throw an error if other than integer entered" do
      expect { generator.generate_password(wrong_length_format, uppercase, lowercase, number, special) }.to raise_error 'Enter integer'
    end

    it "throw an error if length is less or equals one" do
      expect { generator.generate_password(short_length, uppercase, lowercase, number, special) }.to raise_error 'Length too short'
    end
  end
end
