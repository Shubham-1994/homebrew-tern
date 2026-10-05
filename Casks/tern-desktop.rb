cask "tern-desktop" do
  version "0.7.2"
  sha256 "885f85c12e7db9e0c9a654426eb8e7a87fc1129aa2bc97ac2faffe73c0ba67d8"

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
