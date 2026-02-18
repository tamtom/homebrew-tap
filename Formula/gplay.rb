# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.4/gplay-darwin-arm64"
      sha256 "6ae84d1bedead0dab5ecc45fa877df3e423e677c693323e64aa841b355844874"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.4/gplay-darwin-amd64"
      sha256 "1d3557b8d205ee464f9b17abf7dcbccff62eea8197e99925d52ea535bc7df755"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.4/gplay-linux-arm64"
      sha256 "79df1aa1b7d571c0bc4407eafb0375ad62660c330a73b15b98d4ac6a74074cca"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.4/gplay-linux-amd64"
      sha256 "49416729f6aab67ce3563f13cb09ec08db1b4a1e8d614846ea4d02c0ce67ac3a"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
