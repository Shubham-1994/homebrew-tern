class Tern < Formula
  desc "Lightweight terminal-first IDE for running coding agents in parallel"
  homepage "https://github.com/Shubham-1994/homebrew-tern"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.1.0/tern-darwin-arm64"
      sha256 "518c8e6c4dd510165b2789dfb84cb3748613bd5c13bdf1c57061f5eaa127dc1d"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.1.0/tern-darwin-amd64"
      sha256 "184d12920c98a2583b785259aca34b2db101e2a1dde6bbd437db3238bde2c051"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.1.0/tern-linux-arm64"
      sha256 "fa1668726f633e8d2e906401e98fa65d5bc72f2390b9a2b6981f19fe027feed0"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.1.0/tern-linux-amd64"
      sha256 "254d17bfc1544b5f3153b88c1cb3281279c6da2715b5d8b77da1af7a03b63121"
    end
  end

  def install
    bin.install Dir["tern-*"].first => "tern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tern version")
  end
end
