cask "opencore-legacy-patcher" do
  version "0.4.9"
  sha256 "c142d24c69dcfc09f135c9c1478d2898f12d49e1c10615bd031f43e12cff3646"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher-GUI.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS 11 (Big Sur) and 12 (Monterey) on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
