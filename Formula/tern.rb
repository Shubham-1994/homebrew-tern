class Tern < Formula
  desc "Lightweight terminal-first IDE for running coding agents in parallel"
  homepage "https://github.com/Shubham-1994/homebrew-tern"
  version "0.7.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.4/tern-darwin-arm64"
      sha256 "efaa0a909019cc538147ad6dc7e7b0fbe66800113c6b940f80097224e10f76e2"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.4/tern-darwin-amd64"
      sha256 "4959f3792820b7694fa3428d1d7038b9b18439d974a050a620aa70c2419cf04f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.4/tern-linux-arm64"
      sha256 "e698b6893b257a7de81918ed0d3044c6277195eecdf68e063053b31eb126f073"
    end
    on_intel do
      url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v0.7.4/tern-linux-amd64"
      sha256 "cd5e17151132c59662653d7f5e3d5b0727dd4bc08e8c0506c3ff3fd3ffb743d4"
    end
  end

  def install
    bin.install Dir["tern-*"].first => "tern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tern version")
  end
end
