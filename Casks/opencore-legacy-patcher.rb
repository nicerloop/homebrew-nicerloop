cask "opencore-legacy-patcher" do
  version "0.4.3"
  sha256 "06a7da96a0e7908c2242100fd0924f39debb4fa56edf6a884e4c3917ab20917f"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher-GUI-Offline.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS 11 (Big Sur) and 12 (Monterey) on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
