class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "1.9.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.6/work-check-darwin-arm64"
      sha256 "c84ea047900d9d2f1b9ced5958a681b5a6ea4aa6c292f07e246d50069e0c31fe"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.6/work-check-darwin-x64"
      sha256 "dc005216ae4e311a3726d596e30c03db56e0fe0a35cdebb91ea8e1f69b249fc0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.6/work-check-linux-x64"
      sha256 "1857c4c3fe3f0b099dbd57e8d1bf977ca96b56a125a0f72be0dfcd71b80ecfe4"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.6/work-check-linux-arm64"
      sha256 "74c14312c12ad900ce045a3c88a56d21bd01ee8c23412f0bc3a4107cacd6d8bd"
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
