cask "opencore-legacy-patcher" do
  version "0.4.2"
  sha256 "3a30452e5c47c9e72f70c145deddb4a23032f11a4552b27ad0875bf469676f5a"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher-GUI-Offline.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS 11 (Big Sur) and 12 (Monterey) on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
