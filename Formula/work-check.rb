class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.0/work-check-darwin-arm64"
      sha256 "d61c9dea07cc45128b0919b7f5ec3b1cce1a87750b4eb679eb42e4a5a0994dc8"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.0/work-check-darwin-x64"
      sha256 "841fe7d6c0301d6550541676354aed30ea15ee81c87c6994a6a2ad28ba10ae4b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.0/work-check-linux-x64"
      sha256 "b546858b429633247d860204537e42d9040da9e81e0eb232ff5dfe85862c1528"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.0/work-check-linux-arm64"
      sha256 "e64ad2593fc10fd8eece4203b86ba1f2c631a0b9017fdd2e093428501081fe38"
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
