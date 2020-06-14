# coding: utf-8
require "spec_helper"

RSpec.describe Idolmaster do
  describe "#find" do
    it "cinderella_girls has 190 idols" do
      expect(Idolmaster.find(:cinderella_girls).count).to eq 190
    end

    it "origina; has 13 idols" do
      expect(Idolmaster.find(:original).count).to eq 13
    end

    it "shiny_colors has 23 idols" do
      expect(Idolmaster.find(:shiny_colors).count).to eq 23
    end
  end

  describe "define_methods" do
    it "cinderella_girls" do
      expect(Idolmaster.cinderella_girls).to eq (Idolmaster.find(:cinderella_girls))
    end

    it "original" do
      expect(Idolmaster.original).to eq (Idolmaster.find(:original))
    end

    it "shiny_colors" do
      expect(Idolmaster.shiny_colors).to eq (Idolmaster.find(:shiny_colors))
    end
  end
end
