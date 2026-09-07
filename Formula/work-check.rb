class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/bjcgg/work-check"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.3.0/work-check-darwin-arm64"
      sha256 "4f9799a1777b0c461f21109959f4f482b039d12b9f2addba25c4591ff3c7b275"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.3.0/work-check-darwin-x64"
      sha256 "d498bb49406887c6d0f4cb04ca2ee7aa26d5078644896eec0fedb3601428ee6c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.3.0/work-check-linux-x64"
      sha256 "4ccd87cf2527442bc153f17358d533ccfba7039a810fce18879381db77197d73"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.3.0/work-check-linux-arm64"
      sha256 "10334daf97d6f1b650b2b7fc2df3a6f31ab14215ae5aa527fb29bfc50668178a"
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
