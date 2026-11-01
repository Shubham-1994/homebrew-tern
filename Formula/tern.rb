class Tern < Formula
  desc "Lightweight terminal-first IDE for running coding agents in parallel"
  homepage "https://github.com/Shubham-1994/homebrew-tern"
  version "0.7.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.7/tern-darwin-arm64"
      sha256 "d49443bbe7a410cab4a0ce6bf5789da67506a8640d67b9eec9ac18c4756a279d"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.7/tern-darwin-amd64"
      sha256 "b0982925a8acb3b94e691a5863d5cf018780a56cb2fe5b1a0cd42eb372f6cf48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.7/tern-linux-arm64"
      sha256 "7fa1f96987a3f3bd20cf53e3863262f99bd7ecbec5fd8973c2cf07efa571226b"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.7/tern-linux-amd64"
      sha256 "d22a55bb7a7bb4c03276e4861c40abbd464fc68c14bcd97a2a9af2de9436e129"
    end
  end

  def install
    bin.install Dir["tern-*"].first => "tern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tern version")
  end
end
