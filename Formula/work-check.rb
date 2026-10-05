class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/work-check"
  version "2.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.6/work-check-darwin-arm64"
      sha256 "4a750ae1481c2304703e436b74708c3439c0caea24fa90da3ff2f4a348cecc5b"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.6/work-check-darwin-x64"
      sha256 "d9f6fad1789b6cfe4a79ef5d66148cf24efcf148de9c18b6ce9429ecaac39b6e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.6/work-check-linux-x64"
      sha256 "fca80759379ef0c33cad0b164958a5b48a683b95c70b1defda8302c8e14ff815"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.6/work-check-linux-arm64"
      sha256 "17e213e56faad92fb08191ec8a0fe7d5cdcb5eff8ea0e7209b1be082743cf00e"
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
