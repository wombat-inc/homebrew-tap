class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "1.9.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.2/work-check-darwin-arm64"
      sha256 "5fc460d7cef12cc8909931a4f81feefc9aa629982bc9b83cdab330ac20d7a8da"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.2/work-check-darwin-x64"
      sha256 "05902f4ce3d19f7909a4dfc579bdf60d1f98277eb3256213d663358e47084661"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.2/work-check-linux-x64"
      sha256 "ec2250adefbc3c8436a7cabad29dc1260b5e7d7e2f4619cfb761f04d21063fd7"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.2/work-check-linux-arm64"
      sha256 "55ab9bf2f3d1f18cfef3835750b03a3375f7cf0743f387d15b185ada6aab392b"
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
