cask "opencore-legacy-patcher" do
  version "0.4.11"
  sha256 "e7d87f580e03b328d48b4e87135418ac90eaef5ac44b8bfce9c76fa826ce2d9a"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher-GUI.app.zip",
      verified: "https://github.com/dortania/OpenCore-Legacy-Patcher"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run Big Sur (11.x) and Monterey (12.x) on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
