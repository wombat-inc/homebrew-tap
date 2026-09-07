class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/bjcgg/work-check"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.1.0/work-check-darwin-arm64"
      sha256 "ad137a35c558e250a344a97136e0ac0c0c1a37bbb46837d4703af02e23a2788a"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.1.0/work-check-darwin-x64"
      sha256 "bbac51b2650352cfb5125aafd70d389e736c0b6f5f36143f36c0f99b148f29d7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.1.0/work-check-linux-x64"
      sha256 "26833e07db8aad869664c06ae13820a8894a95cd49cbf4815b3069a66de926e2"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.1.0/work-check-linux-arm64"
      sha256 "5b0cb179bb74c505ed833c80e3ee259721f6138fb82564a340e0efedcc807247"
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
