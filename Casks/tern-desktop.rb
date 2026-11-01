cask "tern-desktop" do
  version "0.7.6"
  sha256 "3d9a63ffb0f1cc3b217ab867b0d157a24652f5c8099c96f5bc9a1d9264aa4c3e"

  url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v#{version}/Tern.dmg"
  name "Tern"
  desc "Lightweight IDE for running coding agents side by side"
  homepage "https://github.com/Shubham-1994/homebrew-tern"

  depends_on macos: :monterey

  app "Tern.app"

  caveats <<~EOS
    Tern.app is not notarized yet. The first time: on macOS 15+, System Settings → Privacy & Security → Open Anyway; on 12–14, right-click → Open,
    or clear the quarantine flag:
      xattr -dr com.apple.quarantine /Applications/Tern.app
  EOS
end
