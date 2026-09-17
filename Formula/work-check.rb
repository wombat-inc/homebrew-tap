class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "2.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.4/work-check-darwin-arm64"
      sha256 "f216bb48f9629c00176c38f64c5c53a3ef828a928b319e49a8868bb46070abc2"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.4/work-check-darwin-x64"
      sha256 "e4bedc5724603b032125b08f26a007a653fb2835465d8a9413b27092521852bf"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.4/work-check-linux-x64"
      sha256 "7b036080d30b3b53e5fb722c651ec68cd343378e6f38c1e5f7cae86f153f2f6f"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.4/work-check-linux-arm64"
      sha256 "ab472f8501d16ecca64e23a4e4dea32db475cccd909b9e440a691c692fab0e7d"
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
