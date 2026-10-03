class Tern < Formula
  desc "Lightweight terminal-first IDE for running coding agents in parallel"
  homepage "https://github.com/Shubham-1994/homebrew-tern"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.6.0/tern-darwin-arm64"
      sha256 "d6293d65340fcefdee270b0c50a1f4d033b09e7ca365f027d7a2e2087c2e369c"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.6.0/tern-darwin-amd64"
      sha256 "7ea205971c009157f1e221c5e289c94125a7e3a5e44ab08a8b96f5935a9638ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.6.0/tern-linux-arm64"
      sha256 "8ab7ed5bf253b53fd8e61228cd4f3fd66326d59b6a9d1817aad9a3760dd57cca"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.6.0/tern-linux-amd64"
      sha256 "93670a41dd272e7a7d4c90472edb0e935c63a2a51cd1231b0b05b7516ad9d7d1"
    end
  end

  def install
    bin.install Dir["tern-*"].first => "tern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tern version")
  end
end
