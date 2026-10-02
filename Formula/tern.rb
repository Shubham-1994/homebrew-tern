class Tern < Formula
  desc "Lightweight terminal-first IDE for running coding agents in parallel"
  homepage "https://github.com/Shubham-1994/homebrew-tern"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.4.0/tern-darwin-arm64"
      sha256 "a3ed1b59516d26547374e70d62acb6ef84c4d997437b5e77b583afbe7ac16383"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.4.0/tern-darwin-amd64"
      sha256 "42c4b1fd42c3bf15fe28902d36b0bc47d529dc6c0172726fd82d3062163aa5f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.4.0/tern-linux-arm64"
      sha256 "8c00637c24f1343f1cc31822a5e49c7359a779d2d32c4841b6510d96516b6bba"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.4.0/tern-linux-amd64"
      sha256 "832d97a7358b6446d67e6d46ef42879924cc8df60518df4e7c34576201c30da8"
    end
  end

  def install
    bin.install Dir["tern-*"].first => "tern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tern version")
  end
end
