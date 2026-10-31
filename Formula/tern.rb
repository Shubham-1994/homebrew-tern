class Tern < Formula
  desc "Lightweight terminal-first IDE for running coding agents in parallel"
  homepage "https://github.com/Shubham-1994/homebrew-tern"
  version "0.7.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.5/tern-darwin-arm64"
      sha256 "2a73576bb1f953d7c7b049ee92885a0f07a611e7ca02dbf9f6755fe800460205"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.5/tern-darwin-amd64"
      sha256 "dcebf9ad574c7158a425d42f3e1559acdc48ea7dbe5b4d1d0924ccd782d3d2b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.5/tern-linux-arm64"
      sha256 "eb9d2f65c010140269ecae34bb57925bd1fdeaeccd7559ffccf602be5ab13a63"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.5/tern-linux-amd64"
      sha256 "1a940a736883d912c1c729776da9243b0a5ac5ca86fd1c04a499be0c5234b3a3"
    end
  end

  def install
    bin.install Dir["tern-*"].first => "tern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tern version")
  end
end
