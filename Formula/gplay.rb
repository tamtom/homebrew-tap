# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.6.0/gplay-darwin-arm64"
      sha256 "87700e3212670d8ffb3ba4f2c6a654a922a5ca1420df0abacd72306f5d133a7b"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.6.0/gplay-darwin-amd64"
      sha256 "3cd0801dadb23d6ae854652c5888b123524e101370a1c9449fa5242394668222"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.6.0/gplay-linux-arm64"
      sha256 "5e1988b3c36010613f76d275b71ec5e7a7c331924f0796158bda6b17f3d766d2"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.6.0/gplay-linux-amd64"
      sha256 "fb89c4a43f4dd7cf9784ec4e70bef720adea8901ce2d844b7ac00d4b483dccbe"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
