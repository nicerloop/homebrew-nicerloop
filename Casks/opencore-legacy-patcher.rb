cask "opencore-legacy-patcher" do
  version "0.1.9"
  sha256 "4b53bd5e2d815ec126a7220c66eeafd7e30d88ea9263a5346ba1f5f69c22e2b7"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS Big Sur on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
