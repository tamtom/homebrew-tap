# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.4.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.8/gplay-darwin-arm64"
      sha256 "7339c1d873ce298144b8c60799e408bab6d9b95176d7c9a6f87c9bfa39de598d"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.8/gplay-darwin-amd64"
      sha256 "be15bae97db31c0e0199f42eb370806df8b3263583092ec24338fd3ffa204dda"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.8/gplay-linux-arm64"
      sha256 "32750a896af24f534229f1266abf22071371b006ac427ea861efba4467554e00"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.8/gplay-linux-amd64"
      sha256 "654512380299825a06ef232c1baedde3ee50c58941f2d29d32cbcb4a416fb005"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
