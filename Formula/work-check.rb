class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "1.9.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.9/work-check-darwin-arm64"
      sha256 "fb2a5f2a3a7ba532495d2aef000d30bd194d3389f259ba288a13eb621e6ba306"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.9/work-check-darwin-x64"
      sha256 "d46d2d5eb0c1b70f01b806c5405ea20c9accf1fd8a89a713d6b7eb61fd8b4568"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.9/work-check-linux-x64"
      sha256 "3a3a46b1109581f4277ff8867c2099d5069494e65053584b89664b45dbd1caf3"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.9/work-check-linux-arm64"
      sha256 "416f4ca147323b19ada2f410359ae6c02e0de102574ca9d60fa1836eaee714b5"
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
