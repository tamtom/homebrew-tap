# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.7.1/gplay-darwin-arm64"
      sha256 "3092728357bda944509d680ccc04902de8fee995c1e38878a0d2779f00563486"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.7.1/gplay-darwin-amd64"
      sha256 "3db717eeca2ed2095289e93efec032322a4900beab6b775112de9f6b197f031f"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.7.1/gplay-linux-arm64"
      sha256 "2a0eaa876637e8dd9b292eb2fc56332b35c66dab53c801bd3062719d4643edb9"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.7.1/gplay-linux-amd64"
      sha256 "b2d85ddb8ab100afa3f980f39f8215c4849e4654b7ace0b972d18a452f7559d9"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
