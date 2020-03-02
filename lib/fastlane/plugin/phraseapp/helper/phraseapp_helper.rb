require 'fastlane_core/ui/ui'

module Fastlane
  UI = FastlaneCore::UI unless Fastlane.const_defined?("UI")

  module Helper
    class PhraseappHelper
      def self.execute(command:)
        `#{['cd ..', "#{phrase} #{command}"].join(' && ')}`
      end

      def self.cli_exist?
        !phrase.to_s.empty?
      end

      def self.phrase
        `which phraseapp`.gsub("\n", '')
      end
    end
  end
end
