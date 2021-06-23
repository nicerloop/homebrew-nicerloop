cask "opencore-legacy-patcher" do
  version "0.2.1"
  sha256 "1bbc70ca9e7991b0d88457e0d989a3c2ddca4404c4b741d48d64a64b1e56ebbe"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS Big Sur on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
