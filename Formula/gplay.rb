# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.2/gplay-darwin-arm64"
      sha256 "9f8b72d082c0419abb5ac1954144e830992806f6839de7896eff58444fad5411"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.2/gplay-darwin-amd64"
      sha256 "3b8db68086c579d53d34283eedc971fd00979dd4061d6184bf008a2d130e31a2"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.2/gplay-linux-arm64"
      sha256 "9f9da9877bc1c6580fced999afb822da3cf1ebc6c654573f5ef5fe6018928d43"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.2/gplay-linux-amd64"
      sha256 "257e4a2adcadde4b81aa1f411e0945dbae5119e3231739c5834cd150ad6e8d64"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
