require '../lib/caesar.rb'
describe CaesarCipher do
  describe "#change_phrase" do
    subject(:caesar_phrase) { described_class.new('phrase 1', 1) }
    it "changes to the expected new phrase" do
      expect{ subject.change_phrase('alex') }.to change{ subject.phrase }
      .from('phrase 1').to('alex')
    end
  end

  describe "#change_key" do
    subject(:caesar_key) { described_class.new('phrase 1', 1) }
    it "changes to the expected new key" do
      expect{ subject.change_key(2) }.to change{ subject.key }.from(1).to(2)
    end
  end

  describe "#encode" do
    context "when user's phrase is: (Hello World!) and user's key is: (6)" do
      
    end
  end
end