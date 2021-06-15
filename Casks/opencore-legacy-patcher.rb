cask "opencore-legacy-patcher" do
  version "0.1.7"
  sha256 "f9e8bf841af5a5d6392be639c865c628eec2776216378ee93ba45507372bdd6c"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS Big Sur on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
