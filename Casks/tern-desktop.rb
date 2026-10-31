cask "tern-desktop" do
  version "0.7.5"
  sha256 "6d70d32a6cf9263d93a85c0cc53dbf36a2b0e47e1c4524e8b8b41839cc682113"

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
