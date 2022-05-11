cask "opencore-legacy-patcher" do
  version "0.4.4"
  sha256 "73939a4a623c202a76da2092ac50ab8b71e6d4d43cf0c02f84b149736db8fac7"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher-GUI.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS 11 (Big Sur) and 12 (Monterey) on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
