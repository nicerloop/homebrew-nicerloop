cask "opencore-legacy-patcher" do
  version "0.1.4"
  sha256 "72c91e8dbf1055e7d6fa6db99e5810dc2fdd9628db80cbd184bcc32ff51f6ace"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS Big Sur on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
