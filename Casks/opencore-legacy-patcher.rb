cask "opencore-legacy-patcher" do
  version "0.2.4"
  sha256 "0712c8cb80707ec67ec3c282adfd222fd1f927ca0d46257300edc7398d7bea60"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher-GUI.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS Big Sur on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore Patcher.app"
end
