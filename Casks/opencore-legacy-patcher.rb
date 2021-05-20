cask "opencore-legacy-patcher" do
  version "0.1.5"
  sha256 "6c08223779e33837ba67800c502d7e1af93da6a2980e8cf044c9be3b7f86a95d"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS Big Sur on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
