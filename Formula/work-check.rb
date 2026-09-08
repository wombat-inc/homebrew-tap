class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "2.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.1/work-check-darwin-arm64"
      sha256 "5cc08f86b7a04dbc36ccd5bcc5d8b1ad18aadc9dccbe80ef53c44faec863405a"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.1/work-check-darwin-x64"
      sha256 "6ad211a8c51d10cc50ae8919b41ae66c737c8b9bb14611853efe43eeb305daa1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.1/work-check-linux-x64"
      sha256 "4f41ca66212944f6130bc7829481af22992e440c0f990bcd4f816f35b2ab4b65"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.1/work-check-linux-arm64"
      sha256 "0dfb4fe934a8228c18281435a01c347e8cdad7c6c2c6b737a4552ccc67b624e6"
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
