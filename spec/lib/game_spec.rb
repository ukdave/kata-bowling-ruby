require "game"

describe Game do
  context "gutter game" do
    it "returns 0" do
      20.times { subject.roll(0) }
      expect(subject.score).to eq 0
    end
  end

  context "all 1's" do
    it "returns 10" do
      20.times { subject.roll(1) }
      expect(subject.score).to eq 20
    end
  end

  context "one spare" do
    it "returns 16" do
      subject.roll(5)
      subject.roll(5)
      subject.roll(3)
      17.times { subject.roll(0) }
      expect(subject.score).to eq 16
    end
  end
end
