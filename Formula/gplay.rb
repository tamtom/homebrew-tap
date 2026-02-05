# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.3.0/gplay-darwin-arm64"
      sha256 "df545eb646ad302c1deb8e519cce7ae4361982df4800874b0f9068ea8a34338f"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.3.0/gplay-darwin-amd64"
      sha256 "906259c1ccb689ce468ad22e617b5d04db8b6988b596961aee8671aafbffc71a"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.3.0/gplay-linux-arm64"
      sha256 "b447ef8637b0c7272525a96c090d2ed8dd465afbf2d04016307731710c06eb6b"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.3.0/gplay-linux-amd64"
      sha256 "d2fa35839b3449c1def8e06e32559846dbfd082c0125806cc19194462be3a9b7"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
