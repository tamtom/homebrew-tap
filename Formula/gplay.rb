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
      sha256 "760467bea30577aac5d6abef6da1235d99862efd97763997caf804e90d9ea27e"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.9/gplay-darwin-amd64"
      sha256 "5d19b16cd2a2cf2705a6776af72bf1647f19ddb445a3d0af4c390e35bdaa7b99"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.9/gplay-linux-arm64"
      sha256 "7c63c6334519b9fe93af8fc14cb5bf7d9352645581058132afd97570b5863e5b"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.9/gplay-linux-amd64"
      sha256 "a7c6b0d414eae3335ec607d685c135e68c3732e21368ab268fefb0276b2bab7f"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
