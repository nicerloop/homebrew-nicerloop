cask "opencore-legacy-patcher" do
  version "1.4.2"
  sha256 "bb377c3c1f1341be295288f085097df3e509e2cff70266b7c1a776023796ed65"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher-GUI.app.zip",
      verified: "github.com/dortania/OpenCore-Legacy-Patcher/"
  name "OpenCore Legacy Patcher"
  desc "Patcher to run Big Sur, Monterey and Ventura (11.x-13.x) on unsupported Macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app", target: "/Library/Application Support/Dortania/OpenCore-Patcher.app"

  postflight do
    system "sudo", "rm", "-f", "/Applications/OpenCore-Patcher.app"
    system "sudo", "ln", "-s", "/Library/Application Support/Dortania/OpenCore-Patcher.app", "/Applications"
  end

  uninstall_postflight do
    system "sudo", "rm", "-f", "/Applications/OpenCore-Patcher.app"
  end
end
