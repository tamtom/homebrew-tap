# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.4.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.10/gplay-darwin-arm64"
      sha256 "01b892ed3a7f55fca2c7ff76cbb5b90d527f64e145b27cd40b92313e2b42d4c0"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.10/gplay-darwin-amd64"
      sha256 "f26f312d7ccd2817b6fab2978be6f8c265ee815b547f2b5f6857dfc9a34cd271"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.10/gplay-linux-arm64"
      sha256 "3ba362dc1531b560b490d80eda49c3f7183c2d91b2b79f065c4122e6fdfd0c83"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.10/gplay-linux-amd64"
      sha256 "e0b343b5b18c6e1cf129fa2d546e9b06a864f1a67dcf3c136308cf3a8f9f6c37"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
