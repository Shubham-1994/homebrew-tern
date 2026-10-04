class Tern < Formula
  desc "Lightweight terminal-first IDE for running coding agents in parallel"
  homepage "https://github.com/Shubham-1994/homebrew-tern"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.0/tern-darwin-arm64"
      sha256 "4a49837b88ea07366c0beaa529cb88028e79ffa240779336dbb5faccd23224da"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.0/tern-darwin-amd64"
      sha256 "a4e53838baed70cbf2b5e4f9465ea5969f59d79ffe6ffd37b39543e4aabaf8a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.0/tern-linux-arm64"
      sha256 "2931a7bb69ab8101c4097d5409c94bf1987c9926fe2875271cd892d8e7aa8a07"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.0/tern-linux-amd64"
      sha256 "27c64d037654fd6f2add81ca4c4a3bc76eb2c3c97ef81e8800205e437c8dd6fc"
    end
  end

  def install
    bin.install Dir["tern-*"].first => "tern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tern version")
  end
end
