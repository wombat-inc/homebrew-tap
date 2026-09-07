class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "1.9.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.7/work-check-darwin-arm64"
      sha256 "da1015a31608f88168be4644789fe75ec000f3137d1ea2e37aa768f7b69500f0"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.7/work-check-darwin-x64"
      sha256 "a2de5fb186d012fddeeb9d8279d228e01b5fa77f0a0cd16e110d9809b3d6fdab"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.7/work-check-linux-x64"
      sha256 "65dddac82a38e26b4c7103edcb6205346dbde1fed3e49e734750ce726c5e6d6c"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.7/work-check-linux-arm64"
      sha256 "9378854f6338f12048748f7d05e80e2d54972f2e2a3e2d26504dfe17a580a8e0"
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
