cask "opencore-legacy-patcher" do
  version "0.1.0"
  sha256 "8ca415f1b9b2c1f196d76eb09942847a258c6249950e046832c546968ba70b95"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS Big Sur on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
