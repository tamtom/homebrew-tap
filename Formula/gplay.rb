# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.2.0/gplay-darwin-arm64"
      sha256 "90fc04860f37e921df8d54b816a933344ead15331e306d5cae7d1166bde95fa1"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.2.0/gplay-darwin-amd64"
      sha256 "53ad91ebd19db22e8b06c0be63e2fa1f661658715a76f5c5a01ad349f067d290"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.2.0/gplay-linux-arm64"
      sha256 "cfb0cde74f84c439d438799fb344ffec6436938e9bf36c4f396174291dcd9a50"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.2.0/gplay-linux-amd64"
      sha256 "fb1b3048cdd4596c68da58b4a6b59a3403199dadab86f7aaace93ab79999b4e9"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
