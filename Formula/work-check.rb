class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "1.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.6.0/work-check-darwin-arm64"
      sha256 "8e1ea48a08546a74c704f82ae1ebdc8ab70c29de63de8585a85dee95b95c574a"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.6.0/work-check-darwin-x64"
      sha256 "a37c8bea64f58dfe223d1e238f5f55ee023c174d8ad812e7d582b1833fec56b6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.6.0/work-check-linux-x64"
      sha256 "15d420fd24704e495a753c15f2ef7277e50d4834a8c251540fd53547a4f34c94"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.6.0/work-check-linux-arm64"
      sha256 "884ed5e98d03f99220dc02a59553df8e033be28998eb63ef676326c5c6d10d37"
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
