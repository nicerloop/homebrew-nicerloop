cask "opencore-legacy-patcher" do
  version "0.3.3"
  sha256 "4725d8715feb00403d28736f71502dcc670538808f563027a2ff043bb8dc7ca0"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher-TUI-Offline.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS Big Sur on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
