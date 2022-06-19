# frozen_string_literal: true

RSpec.describe GemWithCExtension do
  it "has a version number" do
    expect(GemWithCExtension::VERSION).not_to be nil
  end

  describe "hello_from_c_ext" do
    it "raises an error without arguments" do
      expect { described_class.hello_from_c_ext }.to raise_error
    end

    it "returns a string if given a string" do
      expect(described_class.hello_from_c_ext("Mark")).to eq "Hello Mark, name length: 4"
    end
  end

  describe "hello" do
    it "raises an error without arguments" do
      expect { described_class.hello }.to raise_error
    end

    it "does not raise error if given a string" do
      expect { described_class.hello("Mark") }.not_to raise_error
    end

    it "prints a string if given a string" do
      expect(described_class).to receive(:puts).with("Hello Mark, name length: 4")
      described_class.hello("Mark")
    end
  end
end
