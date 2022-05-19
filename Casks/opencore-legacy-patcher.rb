cask "opencore-legacy-patcher" do
  version "0.4.5"
  sha256 "c0eb4be21626af67ed6ea0f47b324a8796264787a6da6396f5f15f73da5dbacb"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher-GUI.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS 11 (Big Sur) and 12 (Monterey) on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
