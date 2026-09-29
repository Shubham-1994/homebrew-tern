cask "tern-desktop" do
  version "0.1.0"
  sha256 "694ef1457e67b609c49c50e1b19bc4823c3ea90db76f1a6fb494c5bf67656233"

  url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v#{version}/Tern.dmg"
  name "Tern"
  desc "Lightweight IDE for running coding agents side by side"
  homepage "https://github.com/Shubham-1994/homebrew-tern"

  depends_on macos: ">= :monterey"

  app "Tern.app"

  caveats <<~EOS
    Tern.app is not notarized yet. The first time, open it with right-click → Open,
    or clear the quarantine flag:
      xattr -dr com.apple.quarantine /Applications/Tern.app
  EOS
end
