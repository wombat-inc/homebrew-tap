class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/work-check"
  version "2.0.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.9/work-check-darwin-arm64"
      sha256 "ebc0f605be79d146d82e111cedd1526ab3b4d815ece3eced503636b948a8692c"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.9/work-check-darwin-x64"
      sha256 "3459a3309c5a91a81238752ec90c0ee1caccdc98260e63f8f6f3b2c569ab9b3f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.9/work-check-linux-x64"
      sha256 "b3ce59ec1ed594ea3a8ccfe37aaf65aa8d7f86a27a7db20d231683244acfcc26"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.9/work-check-linux-arm64"
      sha256 "d0084fb5434b2f8a8409e45240fee1f31481b2dce12ca4be46a93387e3e20bea"
    end
  end

  def install
    binary = Dir["work-check-*"].first
    bin.install binary => "work-check"
  end

  def caveats
    "Run `work-check help` after install."
  end
end
