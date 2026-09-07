class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "1.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.7.0/work-check-darwin-arm64"
      sha256 "3aab9b90e134d5cccaa3f7c72538a32a578adb9e1cc63d118375ebf1952b365c"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.7.0/work-check-darwin-x64"
      sha256 "16c3360c7fef1c928778aa89984f010c5728307ee10fb4f826d33b53a317f37b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.7.0/work-check-linux-x64"
      sha256 "0f1417d9bdd8d781fa23cf7de3c0645bb0bd57f2289ac3d7242a6363b45f1d50"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.7.0/work-check-linux-arm64"
      sha256 "2d568f1fb25c149b7bebb89331c5166462e87db3f76fb845a5016a180f1ea2c2"
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
