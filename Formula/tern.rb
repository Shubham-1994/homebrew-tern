class Tern < Formula
  desc "Lightweight terminal-first IDE for running coding agents in parallel"
  homepage "https://github.com/Shubham-1994/homebrew-tern"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.2/tern-darwin-arm64"
      sha256 "38ba295e73a40b2209e60578484cdf1626c6745cc573be86164514cd75d52c20"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.2/tern-darwin-amd64"
      sha256 "35fe3c7ab720b7531c72cad42dd4af830271674e64051ddc9c7d51c9804f7949"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.2/tern-linux-arm64"
      sha256 "8987a4056ba6430f48cbfa37cefc1b2dd8a9d30a43a1bf5719a06cb09ac68059"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.2/tern-linux-amd64"
      sha256 "1f22fccf643c200ceae309202d11c7eb01f8a411618d9f52638050c582b7d166"
    end
  end

  def install
    bin.install Dir["tern-*"].first => "tern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tern version")
  end
end
