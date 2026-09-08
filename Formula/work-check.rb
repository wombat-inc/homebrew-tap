class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "1.9.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.8/work-check-darwin-arm64"
      sha256 "36f9a12953febc1f86b7cd0d295a63a96c4f9f6a832441a90356d01c8e47466f"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.8/work-check-darwin-x64"
      sha256 "24e7834351ac63825feaabcb115b0e694794fe892bf76201ca3b53a068546cf6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.8/work-check-linux-x64"
      sha256 "554e00c2aa6c6b50a3adef14a308e496300403e1dcf7d6b136cd2a74d9c04ebd"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.8/work-check-linux-arm64"
      sha256 "194d2b1386818af6ee8f56e35ff7793db041d971a90a9e313daadf81d4e43f3d"
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
