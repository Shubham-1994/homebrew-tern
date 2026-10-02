class Tern < Formula
  desc "Lightweight terminal-first IDE for running coding agents in parallel"
  homepage "https://github.com/Shubham-1994/homebrew-tern"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.5.0/tern-darwin-arm64"
      sha256 "a5d55349ef82fc8201bb3f54a94ab9b8271f21935c6034d49ce351ccf380d269"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.5.0/tern-darwin-amd64"
      sha256 "28bb14e33d64439d9903cf8a5aae29449995973234e99354eae3a65634b2e9c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.5.0/tern-linux-arm64"
      sha256 "93bf538165fc2229c0747f8c95b9608b360c1c3301ca1db0de5da48a8e6dd45e"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.5.0/tern-linux-amd64"
      sha256 "13618f2fc2dd54ce1d9f4c00f9c0fe86cf9d6d604304becb6bf81b0b15bf7e36"
    end
  end

  def install
    bin.install Dir["tern-*"].first => "tern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tern version")
  end
end
