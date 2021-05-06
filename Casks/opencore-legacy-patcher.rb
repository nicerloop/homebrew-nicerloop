cask "opencore-legacy-patcher" do
  version "0.1.2"
  sha256 "9ee7b40a669558bbda407756b06e3c5363cbe1b8f5acb52c455aec17c4f01704"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS Big Sur on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
