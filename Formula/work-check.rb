class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/bjcgg/work-check"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.2.0/work-check-darwin-arm64"
      sha256 "86a34bf9d235f36ec4ca915605a45746cd21640bba78cbd703909d3de6df2dcb"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.2.0/work-check-darwin-x64"
      sha256 "1ca4212688a2fe8246a875958185567512c7be92de2fc009d6d6774d4b26809f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.2.0/work-check-linux-x64"
      sha256 "0d6f6960768442ccc9437111d1d3afeeea32fbe9ef916849465405a2ff68e697"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.2.0/work-check-linux-arm64"
      sha256 "c261f95f0d46ce76a623a8f0d62034b479ba546e953afea27fff0b24a4cd1779"
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
