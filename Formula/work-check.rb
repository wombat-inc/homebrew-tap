class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "1.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.4.0/work-check-darwin-arm64"
      sha256 "86e1c26ab59f9c9e32983ee772c02763bc5b9bcbeafba95324b6a53aad98bf66"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.4.0/work-check-darwin-x64"
      sha256 "12b6cbc0ea216dac0ad74012d5eab1a1065891029aa9583b53501021f2cf1d71"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.4.0/work-check-linux-x64"
      sha256 "b338f2870f4bf1d795c5d3274b278ee366e305c53c6c75dc232ba2602593fb81"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.4.0/work-check-linux-arm64"
      sha256 "2a2e64eba70252c9273cc01ba15985b5ff9ffe70c948c8f8a946c9df7d022021"
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
