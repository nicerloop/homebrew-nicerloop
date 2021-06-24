cask "opencore-legacy-patcher" do
  version "0.2.2"
  sha256 "e82f5883091fda0018807cb2ea964a82a610c2d8a3b1c919ab47745745008ffc"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS Big Sur on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
