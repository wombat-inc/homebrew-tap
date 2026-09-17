class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "2.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.5/work-check-darwin-arm64"
      sha256 "1617ecb7e65516ae2348e29c17f7e1f00ed24cd008359efc469a2ddebc8ec9b5"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.5/work-check-darwin-x64"
      sha256 "e51bff7c099f94fec7262caeb99c2a49e6d6782be99c4b0ad335bf1f13c99db8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.5/work-check-linux-x64"
      sha256 "90b47c7db967e774b586047777877a78efc6f6d5f2137402b3e1f9ae0798c672"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.5/work-check-linux-arm64"
      sha256 "fa2570d09b036569c6d053bbd25f71f24ccaa9a7afa690b27536318ae4baf8c9"
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
