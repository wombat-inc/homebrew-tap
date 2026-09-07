class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "1.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.7.0/work-check-darwin-arm64"
      sha256 "451cd7a51e71281106a99e6ca8bda3254017f1a4e7ef5d8c3c7b1f9f4bf5f8ba"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.7.0/work-check-darwin-x64"
      sha256 "c5847a49b27f88aba49e927c4bd16a82effe4c6d6845e6e1966c42a7628c96f6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.7.0/work-check-linux-x64"
      sha256 "5544777789aff0db9da8e0669a589bccb3a0946bf27d939cf0a2568f7d174015"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.7.0/work-check-linux-arm64"
      sha256 "d24eb3a9a7f1017831f17b96f58bd6b26624c69ddec25ee45000d4bc40ae599b"
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
