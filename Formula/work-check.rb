class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "1.9.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.5/work-check-darwin-arm64"
      sha256 "acdd7c33608ecb113feda637f30536ff3c91ada284012365b2e36b673a7a1878"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.5/work-check-darwin-x64"
      sha256 "78c1e5b1f0d5d66a2433ba55f9de06b9633078b54b1393f460ccc36f7742c70c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.5/work-check-linux-x64"
      sha256 "4e2d039d50fe9cb34c9918ea438080d18b7ab1dcf22530e3d00954c5080375d2"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.5/work-check-linux-arm64"
      sha256 "dce6528dbf555594f3426d9cea0d70deaed4522acddf834680494e2922a60999"
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
