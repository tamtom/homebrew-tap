# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.4.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.6/gplay-darwin-arm64"
      sha256 "974cacef5a9a84e717495ddfefe8a724746b909e56b55dbacee44e9c78c86907"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.6/gplay-darwin-amd64"
      sha256 "a5671dfe25c4a7f9626c5c61ea5dc63c967c55ca0561c67dda571456b4fe2b2a"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.6/gplay-linux-arm64"
      sha256 "e8e5865b5880f9639aca1b940ab7a49a2c27941224f094e430ef79c0e0e81bd3"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.6/gplay-linux-amd64"
      sha256 "62540eaf8822133316b83783c3fa9c586c9d63aed8c88a9c455e5872482f2d21"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
