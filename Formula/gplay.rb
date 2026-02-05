# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.0/gplay-darwin-arm64"
      sha256 "07b43828b62151233477d5a618d92adbd9028b9a888aa827ce459210ed63e0c2"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.0/gplay-darwin-amd64"
      sha256 "44b05968c84ee65610997dcdf35e4e33de4758db470b834f70639a39a522ad3d"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.0/gplay-linux-arm64"
      sha256 "c6c98da7ec27eb6ad8f5bb5b43fe43f21dd98680471494ca1981ece48e006413"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.0/gplay-linux-amd64"
      sha256 "52877d00b4ff677b3814900c8733ce712c5e449f2ca2d0c3001122bf153f714c"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
