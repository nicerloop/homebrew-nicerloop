cask "opencore-legacy-patcher" do
  version "0.3.1"
  sha256 "c6a2a4d08ca70c2e87dc102ce65248ffea0b2c974d7709df0144cdd664f2e93a"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher-GUI.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS Big Sur on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore Patcher.app"
end
