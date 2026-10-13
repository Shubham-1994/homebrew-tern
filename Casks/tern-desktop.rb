cask "tern-desktop" do
  version "0.7.4"
  sha256 "2acf41cc97cebfb66b45d3b98e11ea26ee9a5a27a3bf83479018095702366fe5"

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
