class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/work-check"
  version "2.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.7/work-check-darwin-arm64"
      sha256 "55ee8d4712c9c6b3a58f2d81cc8aa4982abb108ec121cc29a00eabebc1dbe828"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.7/work-check-darwin-x64"
      sha256 "422047da7d5246c41fd7bf5d984134652ecf17d0b848f1970960091cb8c2de3c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.7/work-check-linux-x64"
      sha256 "83c360669a6db77345ffdf6fd995b0cf5a6c634099ab5d8ef3bf7be246dc2ca7"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.7/work-check-linux-arm64"
      sha256 "426ec96fdee9fc02952fd9240e56149391f01e12ae3a0d4619691bd79101d1e2"
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
