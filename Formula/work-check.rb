class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "1.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.7.0/work-check-darwin-arm64"
      sha256 "3cf9bfabc749c2c1cfbc2c440ec0431df267ad8f8632acc75018b8a49c59bcaf"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.7.0/work-check-darwin-x64"
      sha256 "b54eda5e67d01a68d9ebe69437715bdd7a22446022a3114594293b62a62d5731"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.7.0/work-check-linux-x64"
      sha256 "576e06f938d48d4b39f477203e84b3affeddeb2cbcf701ede8520501c30e998e"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.7.0/work-check-linux-arm64"
      sha256 "8ec529d5ad203f7fdaa2053d5a08815f7dba9d6c381f403cc9481b124f76ddd0"
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
