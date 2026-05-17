# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.5.2/gplay-darwin-arm64"
      sha256 "feab1ae9157d55545636f0011c4c1db526bd8c018b47d826745e49946c721a0a"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.5.2/gplay-darwin-amd64"
      sha256 "64608fcd29f7891f6dc5b0e914d088a806301fe77f15407c32b84b8ad067d3c4"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.5.2/gplay-linux-arm64"
      sha256 "c7f809faa819372807d96f0c08ac31e8e5d3459e12210e63f73d202583498a68"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.5.2/gplay-linux-amd64"
      sha256 "774166551c7ea3f5e73dfdeea9eb2fa81a266b9ae21f50e2f83e62b72ce9dab0"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
