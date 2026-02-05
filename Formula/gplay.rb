# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.1.0/gplay-darwin-arm64"
      sha256 "603342999d7da9802b5fac8e47b6f276c626a6bc7ff02d8f6f1385c84a7d1627"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.1.0/gplay-darwin-amd64"
      sha256 "8be0ad1de741583540fbdcca2890d4c0b60ff57a6ddf6a77522ba2746099ce74"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.1.0/gplay-linux-arm64"
      sha256 "42691cf821fbb48cfed2859ce9799cebf1d3bc57c13dab6d3bdbf1a17bd202df"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.1.0/gplay-linux-amd64"
      sha256 "b73213f81633e5044f2c1ccfed2cead5621329cb8e07495026e0d8a3988a3068"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
