class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/work-check"
  version "2.0.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.8/work-check-darwin-arm64"
      sha256 "5fa2cb7f2894c5c202d74f280d01d51058b150ea549ac7436a28a9c77f14b67e"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.8/work-check-darwin-x64"
      sha256 "5a327f61c805a9276e59333fee5efd08c83be9c8c140c438da582fdcdd88eec2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.8/work-check-linux-x64"
      sha256 "1aa4e791fd06e6892a064cae4342b7e4886f12c6060292e624509a2a91b84aee"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.8/work-check-linux-arm64"
      sha256 "c1cf7101b317a16dab1012a67e9b8b06ab36131835ba294317c20b7fd42e1437"
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
