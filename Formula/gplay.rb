# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.1/gplay-darwin-arm64"
      sha256 "31fd54e9ba8491583d1233d05b86145a47457ae36a52336d14117028b729d5bc"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.1/gplay-darwin-amd64"
      sha256 "3e6eddc56a1548cd836b7cd67e18314db56fdeeaa483f34bd1a5103b4b774552"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.1/gplay-linux-arm64"
      sha256 "64afc3bedbdec27dafaccf96e5d9b8e3ed73754eb29a85f5c35bc300c4fc75c7"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.1/gplay-linux-amd64"
      sha256 "5d021e003f4a969cfb73ecad333497e6d1b78c98b3b8b4142ff26be82f76881f"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
