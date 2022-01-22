cask "opencore-legacy-patcher" do
  version "0.4.1"
  sha256 "219bc1787e9df2b418a1852cfde42fa7b75663cfbee87316d29a87df2bc97563"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher-GUI-Offline.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS 11 (Big Sur) and 12 (Monterey) on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
