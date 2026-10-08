class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/work-check"
  version "2.0.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.11/work-check-darwin-arm64"
      sha256 "99567b51343c6ab9774d64bdb7e9bacffa0d5cc554ec99b363e912f47d26bbe1"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.11/work-check-darwin-x64"
      sha256 "5a23e1535e62036449b775eaac8ea419860754310156e0ad99903dd78a620f45"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.11/work-check-linux-x64"
      sha256 "2493720774fb39cabdc907045ba945e41d5ce9fa35a6b97d76ceea0c3698ac63"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.11/work-check-linux-arm64"
      sha256 "4c8fc71e99431b84a3172c13d8060e759ab3cdc9b26d0ef23cac6977cdb38e88"
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
