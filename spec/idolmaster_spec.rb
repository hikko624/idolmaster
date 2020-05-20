require "spec_helper"

RSpec.describe Idolmaster do
  describe "#find" do
    it " cinderella_girls" do
      expect(Idolmaster.find(:cinderella_girls).count).to eq 190
    end
  end
end
