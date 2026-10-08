cask "tern-desktop" do
  version "0.7.3"
  sha256 "b3f07ef046c9098e07e21880650df86445dc9aec3102ad55d347ed3c7eb2df6c"

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
