class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "1.9.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.3/work-check-darwin-arm64"
      sha256 "55d2663ee44fd58d5e013be4586266c65099e03c96ad7cd72288c3734454cc64"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.3/work-check-darwin-x64"
      sha256 "59451c5baa17af6c5d38ec74cf628b161bda76895c6196bdf5201939fa6ff074"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.3/work-check-linux-x64"
      sha256 "ec173a03f89846eadcac510ba63e8339367429ea41ab62a2d5f9a599f4f4c5ca"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.3/work-check-linux-arm64"
      sha256 "f9163b1fa7a0f926dcc28ee4a7fca4c5ab4af05186cd014810c1c5e42cc39fc7"
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
