class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/work-check"
  version "2.0.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.10/work-check-darwin-arm64"
      sha256 "487b0b2575721315ff00dba6428f981f4be1d8404f73c7816dccfdbf11741d0c"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.10/work-check-darwin-x64"
      sha256 "57ecf5c62cfc525c71fede6adc781fde244cb57b2cf6a526573166d7bc77752e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.10/work-check-linux-x64"
      sha256 "ed2b75b63f516cb8dfdf6ed8c06c329a2cf42e63366cc6bc1deeb28e8cf06515"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v2.0.10/work-check-linux-arm64"
      sha256 "5cf2132061a86fd02de313d4a33bd2254cdfb639ea89b74e108015d49374f98c"
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
