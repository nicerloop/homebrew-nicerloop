cask "opencore-legacy-patcher" do
  version "0.2.5"
  sha256 "01795c2d1bea46657d826c871dd147d4a382fc0f4034563169075001d926f53f"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher-GUI.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS Big Sur on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore Patcher.app"
end
