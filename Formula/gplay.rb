# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.3/gplay-darwin-arm64"
      sha256 "7dbc0247246f9c0a56aa9ce6a65296f55497a8c67da32bc8e991e6b7931ce008"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.3/gplay-darwin-amd64"
      sha256 "6daad25d98179f17743f75e41eac6d0fbb6b5bcd552eb54c72c3349eb3d9fcba"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.3/gplay-linux-arm64"
      sha256 "6921b46de81c0b34de4a463bb1625f6080e204c55a4fcc5f1df3422c7f8b6872"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.3/gplay-linux-amd64"
      sha256 "8f55c15a9c6418f440fb588730bc341dccbb1639af0c0e00aab10ebfdf0972c7"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
