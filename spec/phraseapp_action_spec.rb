describe Fastlane::Actions::PhraseappAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The phraseapp plugin is working!")

      Fastlane::Actions::PhraseappAction.run(nil)
    end
  end
end
