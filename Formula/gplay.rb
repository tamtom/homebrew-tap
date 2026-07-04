# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.7.0/gplay-darwin-arm64"
      sha256 "a4b922490fe8b27fd8d5983bbc72556e729cc61339fbcbce272676d9389fbd53"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.7.0/gplay-darwin-amd64"
      sha256 "bf7e94e0204bf8f84bc04ccb7007c9b46accbd97b76682cf48f62c089739da01"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.7.0/gplay-linux-arm64"
      sha256 "7b7700126d559ad3327ead4b2ed020ab9033df92c1bf95bd9ae532577c67678c"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.7.0/gplay-linux-amd64"
      sha256 "5e1b37b6a6d9c5b42b2b730c023d96517b91089087cc9faf50f710ad3c6f5d13"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
