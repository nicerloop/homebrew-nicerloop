cask "opencore-legacy-patcher" do
  version "0.4.10"
  sha256 "5ff0711dead6de50f7a865f373b7129f7da685c54de2adec069f5c44de8b38eb"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher-GUI.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS 11 (Big Sur) and 12 (Monterey) on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
