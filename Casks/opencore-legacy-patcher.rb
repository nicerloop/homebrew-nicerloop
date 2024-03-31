cask "opencore-legacy-patcher" do
  version "1.4.3"
  sha256 "391fccf00fa221a27bef8a03bbad2dcbb36f73d5521a7dd2d755c93280749c1c"

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
