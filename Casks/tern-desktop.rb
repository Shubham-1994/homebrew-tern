cask "tern-desktop" do
  version "0.3.0"
  sha256 "2551b88e539d8a1182a318986ffdbeac04d5f91c3e59737bed46cf0d2b3635be"

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
