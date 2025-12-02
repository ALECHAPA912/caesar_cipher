require '../lib/caesar.rb'
describe CaesarCipher do
  subject(:default_caesar) { described_class.new('phrase 1', 1) }
  describe "#change_phrase" do
    it "changes to the expected new phrase" do
      expect{ subject.change_phrase('alex') }.to change{ subject.phrase }
      .from('phrase 1').to('alex')
    end
  end

  describe "#change_key" do
    it "changes to the expected new key" do
      expect{ subject.change_key(2) }.to change{ subject.key }.from(1).to(2)
    end
  end

  describe "#encode_char" do
    context "when char input is: a, and key is: 3" do
      subject(:caesar_char) { described_class.new('default', 3) }
      it "returns: d" do
        result = subject.encode_char('a')
        expect(result).to eq('d')
      end
    end
    context "when char input is: Z, and key is: 1" do
      subject(:caesar_char) { described_class.new('default', 1) }
      it "returns A" do
        result = subject.encode_char('Z')
        expect(result).to eq('A')
      end
    end
  end
  describe "#encode" do
    context "when user's phrase is: Salchicha! and user's key is: 5" do
      subject(:caesar_hotdog) { described_class.new('Salchicha!', 5) }
      it "returns Xfqhmnhmf!" do
        result = subject.encode
        expect(result).to eq('Xfqhmnhmf!')
      end
    end

    context "when user's phrase is: Hello World! and user's key: 10" do
      subject(:caesar_world) { described_class.new('Hello World!', 10) }
      it "returns Rovvy Gybvn!" do
        result = subject.encode
        expect(result).to eq('Rovvy Gybvn!')
      end
    end
  end
end