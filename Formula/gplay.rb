# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.5.1/gplay-darwin-arm64"
      sha256 "9cc85830bbde2ccaa0235bfdea7d533d4d342e8386703658364acdc46a0c4281"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.5.1/gplay-darwin-amd64"
      sha256 "6851bbc07bf5463826a5efcf38b4fe65b82b31aed50b837d62bb875e46328c1c"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.5.1/gplay-linux-arm64"
      sha256 "1be9aef58ebf210b1ea40c5cf0bc32914803d56070f9b184904b72de7e8fc6b6"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.5.1/gplay-linux-amd64"
      sha256 "833c4f9d95b5509e0c8fd9e5b4d3d45ed6d640640a328d67dcd96a4594b22ed4"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
