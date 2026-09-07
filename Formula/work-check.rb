class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "1.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.0/work-check-darwin-arm64"
      sha256 "8bec08da84fce770ed0a4cf45c059f56d07bab9aba53fbb92c0aaa0b68271a77"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.0/work-check-darwin-x64"
      sha256 "430d45e057cebaa651c00f942ec81aff74d224af28cec4bb912156fbfb16bb57"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.0/work-check-linux-x64"
      sha256 "8eaf66298b6c3f081c5d9c95e3abeb2ccfed8e6bf0571b2b0eccdeca31bb0619"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.0/work-check-linux-arm64"
      sha256 "255694e98e62dd2bfc1ad7db793427658a8196ffbbcf67d42034b959f58e779b"
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
