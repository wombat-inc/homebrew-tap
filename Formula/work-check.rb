class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/work-check"
  version "2.0.8.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.8.1/work-check-darwin-arm64"
      sha256 "f2a5e2e6b57785efa7bcc6a601536fe27706483eef414356c08d9bf503f55430"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.8.1/work-check-darwin-x64"
      sha256 "8838578803cdab4c54060c4f116069bdaeefe830acf81b61999ed57d5907270c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.8.1/work-check-linux-x64"
      sha256 "2608e78508082c5a81355314f6a6ba45a699a2cc1c9a8b48a3cf241824e876a0"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.8.1/work-check-linux-arm64"
      sha256 "605efe34afd9dec45f03b5cae464239e3ac6250af428f8020abb032433888c7a"
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
