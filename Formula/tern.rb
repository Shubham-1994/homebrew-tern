class Tern < Formula
  desc "Lightweight terminal-first IDE for running coding agents in parallel"
  homepage "https://github.com/Shubham-1994/homebrew-tern"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.3.0/tern-darwin-arm64"
      sha256 "42201c16ed357899a6153135490b5e1007b2bdb560e615f8a2bd32d32b8aa279"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.3.0/tern-darwin-amd64"
      sha256 "5557065aa723fa5317abe97ebd9e4bb7e68ea8713b75cf4590c9a487a3518f9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.3.0/tern-linux-arm64"
      sha256 "4c9313f9fa763502bddee71c1c4d90d5affd5eee1eef65f8061fa77d373609a9"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.3.0/tern-linux-amd64"
      sha256 "6ff4372cb62446a74f52070cad060439117fe19d4b0efe2e76f4163d13906cce"
    end
  end

  def install
    bin.install Dir["tern-*"].first => "tern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tern version")
  end
end
