class Gplay < Formula
  desc "CLI for Google Play Console - manage Android apps from the terminal"
  homepage "https://github.com/tamtom/play-console-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.1.0/gplay-darwin-arm64"
      sha256 "bdabac5fe50748864955a444c3ca71364d1c23e309e83d0f39c3e76fc7742be3"

      def install
        bin.install "gplay-darwin-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.1.0/gplay-darwin-amd64"
      sha256 "45c6db407a793f19ac7f9d9ba862f8cde01aa0c2802acc0e82e26a5c00693cae"

      def install
        bin.install "gplay-darwin-amd64" => "gplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.1.0/gplay-linux-arm64"
      sha256 "0fbe15f35d95176b1a7d23e3752effefb8ddd180e5569bf2b10203ae2a7bfb92"

      def install
        bin.install "gplay-linux-arm64" => "gplay"
      end
    else
      url "https://github.com/tamtom/play-console-cli/releases/download/v0.1.0/gplay-linux-amd64"
      sha256 "7a526a58830151ef988877362f13d6abff9aa7ea3bfda9246eb3f615ebd48c72"

      def install
        bin.install "gplay-linux-amd64" => "gplay"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gplay version")
  end
end
