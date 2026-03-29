# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.4.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.9/gplay-darwin-arm64"
      sha256 "59165ac87cb3af27582e36832e30e0162249d7a412c855b429c5ad7926593806"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.9/gplay-darwin-amd64"
      sha256 "59b456c37958190b8305ff975338f03ccb2f0cbbb85d31f65d8aa6906a09e108"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.9/gplay-linux-arm64"
      sha256 "82c317de489a8b4fc7b30d01fb2cfa4211cc045113c422a7f42545738ae5d2ad"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.9/gplay-linux-amd64"
      sha256 "1afa135b24ce72c589992468d2d6dd19ac691bca83cd269e4e7a2348315549c7"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
