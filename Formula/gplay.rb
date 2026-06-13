# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.5.3/gplay-darwin-arm64"
      sha256 "64f81fb21660de59c977aa23e26d05e8ec0e2bc67390164eb323f11fa0ab99a6"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.5.3/gplay-darwin-amd64"
      sha256 "3e882bff7b309af125fa6733475dbaf4a2c149e337b4110a54d8d25f13413423"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.5.3/gplay-linux-arm64"
      sha256 "2992c90912856cfaab2e8f980cfe699161438016d5cb4c59a23a24649bae2795"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.5.3/gplay-linux-amd64"
      sha256 "410ef6c95c1d129e8dc6101e9a24375e19b6c51b498a65f143720ada96f49790"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
