cask "opencore-legacy-patcher" do
  version "0.5.3"
  sha256 "6e252b329ed9df943fb1f2a749d7eb32eaecd457c6a20416a1b1a811fd794c5b"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher-GUI.app.zip",
      verified: "https://github.com/dortania/OpenCore-Legacy-Patcher"
  name "OpenCore Legacy Patcher"
  desc "Patcher to run Big Sur, Monterey and Ventura (11.x-13.x) on unsupported Macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
