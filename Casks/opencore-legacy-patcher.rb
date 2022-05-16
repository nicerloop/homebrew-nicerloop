cask "opencore-legacy-patcher" do
  version "0.4.5"
  sha256 "3a975a412d9e88eec1f44b096bac2cdf53ba5d9a01c39d805e021a631548b45e"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher-GUI.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS 11 (Big Sur) and 12 (Monterey) on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
