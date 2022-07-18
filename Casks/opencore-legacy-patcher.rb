cask "opencore-legacy-patcher" do
  version "0.4.8"
  sha256 "7cf7698747c1f0e7cc11871e9455a96faf1fd73b27bbe8d32b542d965f26e52a"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher-GUI.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS 11 (Big Sur) and 12 (Monterey) on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
