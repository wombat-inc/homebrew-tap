class WorkCheck < Formula
  desc "tiny office check-in board"
  homepage "https://github.com/wombat-inc/homebrew-tap"
  version "1.9.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.4/work-check-darwin-arm64"
      sha256 "f39ff7589014287f457854ec59e62864a41d02899f8c518e2a80bdf1776091f2"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.4/work-check-darwin-x64"
      sha256 "2766062b603b04caec6ecba372c36ed7f70c5fbdd0807f41955b9dc1f34d0304"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.4/work-check-linux-x64"
      sha256 "bf638ac4c1cb077d652eff62a8bfd5b9b00591cce9978493a8cd692ca6e51b15"
    else
      url "https://github.com/wombat-inc/homebrew-tap/releases/download/work-check-v1.9.4/work-check-linux-arm64"
      sha256 "dd5cf1f3716359a9f9c26cf17a2e6fd97290be66dada96ee5d9dcae38d118624"
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
