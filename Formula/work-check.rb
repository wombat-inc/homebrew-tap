class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "1.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.6.0/work-check-darwin-arm64"
      sha256 "1ffabfe5da03b5528d95cb3056e2eb082fde6c9a72d8586d2c866099c6faab1e"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.6.0/work-check-darwin-x64"
      sha256 "e5d60f8333346edc9276ef251e94a7dbef15f9b3c80acab5b9bff838f6b0be46"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.6.0/work-check-linux-x64"
      sha256 "ecb6a74f3f6d558a4ec8e2c6ded761e4b9fa4aee42db12c79d9caa1c97650cd5"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.6.0/work-check-linux-arm64"
      sha256 "8067690967ab7ee6ce77af60b7c51a818f98407e456a8ab976463573d22bcfbe"
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
