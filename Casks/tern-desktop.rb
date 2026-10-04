cask "tern-desktop" do
  version "0.7.1"
  sha256 "fb8d804f2ef485c32bcffff638ec6cfb7bf899f15d08f578e2e17413fb9bd6e1"

  url "https://github.com/Shubham-1994/homebrew-tern/releases/download/v#{version}/Tern.dmg"
  name "Tern"
  desc "Lightweight IDE for running coding agents side by side"
  homepage "https://github.com/Shubham-1994/homebrew-tern"

  depends_on macos: :monterey

  app "Tern.app"

  caveats <<~EOS
    Tern.app is not notarized yet. The first time, open it with right-click → Open,
    or clear the quarantine flag:
      xattr -dr com.apple.quarantine /Applications/Tern.app
  EOS
end
