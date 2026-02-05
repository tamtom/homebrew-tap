# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.3.1/gplay-darwin-arm64"
      sha256 "f3a5693db1ecf9e6405152a35f743b5ccab600947d585c0720f2face4ec79f3c"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.3.1/gplay-darwin-amd64"
      sha256 "8a480252e4ea159fc14417e175c512b631a8de9f66c7b151a4b1c7ce55fc4111"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.3.1/gplay-linux-arm64"
      sha256 "d2791c673c4d9438aa2fe1f8b876443de85d393781887c300419f3dbff22658f"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.3.1/gplay-linux-amd64"
      sha256 "c349f753bd2279e93f9b60f79935045f92c20aa57702ed162f493c623d974b80"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
