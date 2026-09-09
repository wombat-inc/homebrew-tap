class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "2.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.3/work-check-darwin-arm64"
      sha256 "0ac63ed141df0e5a7dfdacf129a596e3cdcf3342e50ab9de9a612f49a97635f1"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.3/work-check-darwin-x64"
      sha256 "e36206d7a0def1406a45dbcd9c7e24afdf1459430fb34440072653e14d689d86"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.3/work-check-linux-x64"
      sha256 "9cafbf45d9c35d5e18e1d737359b085976a011c0add6044cf1af2ebaf85a324b"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.3/work-check-linux-arm64"
      sha256 "7bfcbd08cfe28cc928be2a85bff180614b5299eda307095622a6f2b24aa2c3aa"
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
