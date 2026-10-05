class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/work-check"
  version "2.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.6/work-check-darwin-arm64"
      sha256 "e9c74ecbfdc5726eddd651b650c528b17ce8f1d763a826ee6c7195565e110a15"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.6/work-check-darwin-x64"
      sha256 "4c59a62a6dd059a27ff5ceddb8d94834beb0ccf90a8dd8dee8d810db0a8e5ad1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.6/work-check-linux-x64"
      sha256 "cac9710163997b53397a23ecaed94b1dfa7856ea3e32180c0b8b1a87f6e98ec6"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.6/work-check-linux-arm64"
      sha256 "8cbd51e6b4899c2dedf73f76b636f7cd5447968e5c5b4e90bdc1889711c4e650"
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
