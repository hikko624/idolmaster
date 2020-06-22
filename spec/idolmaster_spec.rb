# coding: utf-8
require "spec_helper"

RSpec.describe Idolmaster do
  describe "#Rubimas::Idol" do
    describe "#find" do
      it "undefined series" do
        expect { Rubimas::Idol.find(:undefined) }.to raise_error(RuntimeError)
      end
    end

    describe "Count Idols" do
      it "cinderella_girls has 190 idols" do
        expect(Rubimas::Idol.find(:cinderella_girls).count).to eq 190
      end

      it "origina; has 13 idols" do
        expect(Rubimas::Idol.find(:original).count).to eq 13
      end

      it "shiny_colors has 23 idols" do
        expect(Rubimas::Idol.find(:shiny_colors).count).to eq 23
      end

      it "side_m has 46 idols" do
        expect(Rubimas::Idol.find(:side_m).count).to eq 46
      end
    end
  end

  describe "define_methods" do
    it "cinderella_girls" do
      expect(Idolmaster.cinderella_girls).to eq (Rubimas::Idol.find(:cinderella_girls))
    end

    it "original" do
      expect(Idolmaster.original).to eq (Rubimas::Idol.find(:original))
    end

    it "shiny_colors" do
      expect(Idolmaster.shiny_colors).to eq (Rubimas::Idol.find(:shiny_colors))
    end

    it "side_m" do
      expect(Idolmaster.side_m).to eq (Rubimas::Idol.find(:side_m))
    end

    it "undefined_methods" do
      expect { Idolmaster.undefined }.to raise_error(NoMethodError)
    end
  end
end
