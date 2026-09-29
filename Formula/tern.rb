class Tern < Formula
  desc "Lightweight terminal-first IDE for running coding agents in parallel"
  homepage "https://github.com/Shubham-1994/homebrew-tern"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.2.0/tern-darwin-arm64"
      sha256 "2df9cb7c86fef56ae3d19ac7339c4e727e1d8e53f316471105baf08dbfdc35c5"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.2.0/tern-darwin-amd64"
      sha256 "dcf5bd8a3d0724972ee8d4dbbf408e76fc3740786bac4d3fdda72c9062c967b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.2.0/tern-linux-arm64"
      sha256 "970d9b4a9e33ea12be1ab0e1c8834dff518959395820e429aaaa0453015ebbcb"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.2.0/tern-linux-amd64"
      sha256 "1c674cce96638b834dbb7a081c74bd56e86ed61cb6fa4e5fe2f6f275f4765339"
    end
  end

  def install
    bin.install Dir["tern-*"].first => "tern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tern version")
  end
end
