# coding: utf-8
require "spec_helper"

RSpec.describe Idolmaster do
  describe "#find" do
    it "cinderella_girls has 190 idols" do
      expect(Idolmaster.find(:cinderella_girls).count).to eq 190
    end
  end

  describe "define_methods" do
    it "cinderella_girls has  " do
      expect(Idolmaster.cinderella_girls.count).to eq (Idolmaster.find(:cinderella_girls).count)
    end

    it "cinderella_girls" do
      expect(Idolmaster.cinderella_girls).to eq (Idolmaster.find(:cinderella_girls))
    end
  end
end
