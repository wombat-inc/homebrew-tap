class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "1.9.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.1/work-check-darwin-arm64"
      sha256 "79d0003e714a598a8f9f1375558f800186128d62d256a10293ce9466a7ab5edd"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.1/work-check-darwin-x64"
      sha256 "c3c9a6787cb9a44383c73fd9155689f83f3b767e32a15198ca482990b5d6f33b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.1/work-check-linux-x64"
      sha256 "84cef49f5084d7136d7716d1bafe2f8b2b8ab7fabe2430303f14c28cb1b89f0d"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.1/work-check-linux-arm64"
      sha256 "eb658797096b5cab61adee00309051b6834ee9d725dc8482d9ba55ab7d1d7c17"
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
