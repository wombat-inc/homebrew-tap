class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "1.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.5.0/work-check-darwin-arm64"
      sha256 "327b6206004300072b3d2b1bb980f3d7695785a56f10d69c42cd8ce52fdf17f4"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.5.0/work-check-darwin-x64"
      sha256 "9a9ab47ba9ab893898e3d4c82f713660951050a8aa5d4f0ca668616e69b17d37"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.5.0/work-check-linux-x64"
      sha256 "677308a3bf92b511942a04dd67013cfa29a3b72c896e2adcb32335db8732626a"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.5.0/work-check-linux-arm64"
      sha256 "f40f9a39f8a1d05a4f9b71a17221787f59979ac0ab21542b2c95bb26793a6076"
    end
  end

  def install
    binary = Dir["work-check-*"].first
    bin.install binary => "work-check"
  end

  test do
    assert_match "check-in", shell_output("#{bin}/work-check help")
  end
end
