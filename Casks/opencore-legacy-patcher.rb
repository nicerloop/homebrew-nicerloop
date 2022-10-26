cask "opencore-legacy-patcher" do
  version "0.5.0"
  sha256 "bdc400371db8479b03534060484274f10bdd8d912c822d8592efa01a17c24814"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher-GUI.app.zip",
      verified: "https://github.com/dortania/OpenCore-Legacy-Patcher"
  name "OpenCore Legacy Patcher"
  desc "Patcher to run Big Sur, Monterey and Ventura (11.x-13.x) on unsupported Macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
