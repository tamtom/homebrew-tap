# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.4.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.7/gplay-darwin-arm64"
      sha256 "c54564671c8d1eab6978744aa09b3bf4ac9aa65c1c79bfaf31c2af4fd530f2e4"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.7/gplay-darwin-amd64"
      sha256 "7d00fd10cc9d2d9dbcb3117536ada1ba5762e4f9cbab82875075c5baf993173e"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.7/gplay-linux-arm64"
      sha256 "e48efb9d584c2444b36339f2969ac41ca7642a576ded7bb1431687f5e5fce2d6"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.7/gplay-linux-amd64"
      sha256 "d8c0934b821bc9a151286e9699f4f6ae44a60204378c7b3e4a5b018d43ba7e53"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
