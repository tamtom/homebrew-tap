# typed: false
# frozen_string_literal: true

class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.4.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.6/gplay-darwin-arm64"
      sha256 "f61d7fcc4a18868b5e5674866a96ba04c8c67d46fc3115152bceb43cd0f97823"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.6/gplay-darwin-amd64"
      sha256 "c89b5bb3b0925b2e6cff0c097aa20a201b771fb134fcc9c1ee6bc39f4f51c5f4"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.6/gplay-linux-arm64"
      sha256 "49e8ae745a6910e21a645596fc04fa0a4a34dc4d9b036a34ea8062325fdea00d"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.4.6/gplay-linux-amd64"
      sha256 "02bb5d9c4bb0949496f79c0adf2bbf095030c09fc768667f59e6fb6cabf129c5"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
