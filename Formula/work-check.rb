class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "2.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.2/work-check-darwin-arm64"
      sha256 "e12da86768c741517adde5ac24ec8fe4d23e9226cd40ff31472b7841b3835cd5"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.2/work-check-darwin-x64"
      sha256 "8d0e07d13e1fc5da9518ef4533b77c6f0f6865e58858b6681cde224f4db7ede9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.2/work-check-linux-x64"
      sha256 "89752d5a410715efb62a61a0a61231a7f30612540db875af15aa79057ec0dc07"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.2/work-check-linux-arm64"
      sha256 "9f9a4efa9ecc28deb0c4a20be949631feae74f73c54e11d25375b7ab55218de5"
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
