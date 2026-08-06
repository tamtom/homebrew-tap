# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.8.1/gplay-darwin-arm64"
      sha256 "13119cb753a32c58301fd4904901aac64116dc0f4478618b89d1865c30d2c8b1"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.8.1/gplay-darwin-amd64"
      sha256 "42b2298affea19597612729c9943802ea1c770676393e973437995dcd3399b4c"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.8.1/gplay-linux-arm64"
      sha256 "621010846d2faf51090875e77ecb6ac8fc850ebeccea31c3782f10cbd9e84d62"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.8.1/gplay-linux-amd64"
      sha256 "e286bb7d3d02fae387bf717656e0abfd954dab5d9f14e576f690ef94920c3c60"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
