# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.5.0/gplay-darwin-arm64"
      sha256 "8f24fea81b6770316363e51c4b7395a14399521067fc13cbfc374a50c5d8a914"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.5.0/gplay-darwin-amd64"
      sha256 "4cf0ee412eff8764d7590ef77c97d19eb95ac105a60bde376d494997b5aaf5b7"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.5.0/gplay-linux-arm64"
      sha256 "975e81dfe0cb7a7a6e2945c97e6c86526de02ca2156c609419d82bece3c4e263"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.5.0/gplay-linux-amd64"
      sha256 "6e705c9c0882b5ecaab79e0f5029b88de8e092d1e0c83b9c0772545ed7c77d22"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
