class Tern < Formula
  desc "Lightweight terminal-first IDE for running coding agents in parallel"
  homepage "https://github.com/Shubham-1994/homebrew-tern"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.3/tern-darwin-arm64"
      sha256 "6c31c2bcb0c869f49d950bc5ffdbe230fe161b030d46650b03f0bfd0f1a0ef42"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.3/tern-darwin-amd64"
      sha256 "70ccd9fb14b1121ec1a2f80d89a7828f709d70a9e85bc86e0c73a20370261a3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.3/tern-linux-arm64"
      sha256 "777ea333f5cf046dcca22f0c14b84b1a0a8967a113603b3490496c64557d9f92"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.3/tern-linux-amd64"
      sha256 "a0413f7a9faf81b23ef4fa7f835fd8cfad6e47c368499483bc3694c1d9f2e55d"
    end
  end

  def install
    bin.install Dir["tern-*"].first => "tern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tern version")
  end
end
