# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.8.0/gplay-darwin-arm64"
      sha256 "b6b7b016c68088d9cf7d8d66566395c8c6b6f984e8b1a69624089aaaae3950fa"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.8.0/gplay-darwin-amd64"
      sha256 "afab6397d65a84bbc4f7f91a333e5cbdbdd2535bd3bdf6ad8ac7cc5e61d45366"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.8.0/gplay-linux-arm64"
      sha256 "f403b622cdf58295554ee6d2e5984bfbbeac82bdd304397c991243476a7d8d46"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.8.0/gplay-linux-amd64"
      sha256 "ea9d812878dcc61faa0401a306f3f648ab6779d87358e07afb8590e9c96a313a"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
