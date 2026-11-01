class Tern < Formula
  desc "Lightweight terminal-first IDE for running coding agents in parallel"
  homepage "https://github.com/Shubham-1994/homebrew-tern"
  version "0.7.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.6/tern-darwin-arm64"
      sha256 "41f06f5a27993a07d74d781e1b10fba59a05cc88bba6e0688c84d3da395add1e"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.6/tern-darwin-amd64"
      sha256 "4e0d2174ac7171ba7d5fe301738b43e1dc4cbf0610ddf6601b03733087fcc43c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.6/tern-linux-arm64"
      sha256 "0fa0dc76f9fa277a0d7e1fc8bd0c633acc12dde592db6f29346d799f11be88ff"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.6/tern-linux-amd64"
      sha256 "80f341d560579bbeffc1f617721cb546b2c99ab5760380e1647892abf1b0524e"
    end
  end

  def install
    bin.install Dir["tern-*"].first => "tern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tern version")
  end
end
