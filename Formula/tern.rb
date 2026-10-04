class Tern < Formula
  desc "Lightweight terminal-first IDE for running coding agents in parallel"
  homepage "https://github.com/Shubham-1994/homebrew-tern"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.1/tern-darwin-arm64"
      sha256 "f86dc1c91bb31a551d4feb207470aaf0f4262ae9b173111caca2fdf632ffa52d"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.1/tern-darwin-amd64"
      sha256 "6dec22931da4dd675441bd5d7f4b97b65ea451009acbf720062792073f6d66fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.1/tern-linux-arm64"
      sha256 "3a77609d78eef421362fbf063a9ddf0fab9424ef22b381fbedac58677ed4e06e"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.1/tern-linux-amd64"
      sha256 "f8afdf23942f9f1f87c58386c432971e9df422955f1f1cf88df1818d004c6f44"
    end
  end

  def install
    bin.install Dir["tern-*"].first => "tern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tern version")
  end
end
