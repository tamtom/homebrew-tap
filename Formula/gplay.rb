# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.5/gplay-darwin-arm64"
      sha256 "c4b592526c843e2b8baa76a73861c28a82dcb84ae8674e1fd50c0956748ffc24"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.5/gplay-darwin-amd64"
      sha256 "3b0869a7d2831a5dd9c96a0c16e36caca8f783795653c3984bd15e920421ed45"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.5/gplay-linux-arm64"
      sha256 "3b38563061edb9ee173bea530c94cfe83e30037dab1479f4b0aabdc220967b60"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.5/gplay-linux-amd64"
      sha256 "13519efb2b02b68d18113c59a580104a2ba5da2c2d63abdbd237e1ad80685bce"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
