# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.4.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.11/gplay-darwin-arm64"
      sha256 "5460bc7777e27e22243092f9cd6726f4cd197d2e6a6f44771a906900039ba31d"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.11/gplay-darwin-amd64"
      sha256 "6e5ecc2f2f95b65d6adafc84d8923a6dc8c5a6820deafe3b6b5f7120e0e377c3"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.11/gplay-linux-arm64"
      sha256 "a8d868bd26c95275a943944c98255efa7dcf6b93508fd941546af4ca6882b6c3"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.11/gplay-linux-amd64"
      sha256 "5d113828e2f76fe680a8dba7d7e669574bbadcb2800cb992fd05ecfc7d524a07"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
