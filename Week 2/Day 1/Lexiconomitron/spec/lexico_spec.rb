require './lexico'

describe Lexiconomitron do 
		let (:lexiconomitron) { Lexiconomitron.new }

  describe "#eat_t" do
    it "removes every letter t from the input" do
      expect(lexiconomitron.eat_t("great scott!")).to eq("grea sco!")
    end
  end

  describe '#shazam' do
  	it "reverses the letters and returns first and last word with t removed" do
  		expect(lexiconomitron.shazam(["This", "is", "a", "boring", "test"])).to eq(["sih", "se"])
  	end
  end

  describe '#oompa_loompa' do
  	it "returns words of three letters or less with t removed" do
  		expect(lexiconomitron.oompa_loompa(["if", "you", "wanna", "be", "my", "lover"])).to eq(["if", "you", "be", "my"])
  	end
  end

    describe '#oompa_loompa' do
  	it "returns words of three letters or less with t removed" do
  		expect(lexiconomitron.oompa_loompa(["This", "is", "how", "we", "do", "it"])).to eq(["is", "how", "we", "do", "i"])
  	end
  end

end