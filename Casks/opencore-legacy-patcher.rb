cask "opencore-legacy-patcher" do
  version "0.5.2"
  sha256 "faf77263ea4481792d6323be2c083fe71a0906ab9403cb19fc2f2961f6b152ea"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher-GUI.app.zip",
      verified: "https://github.com/dortania/OpenCore-Legacy-Patcher"
  name "OpenCore Legacy Patcher"
  desc "Patcher to run Big Sur, Monterey and Ventura (11.x-13.x) on unsupported Macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
