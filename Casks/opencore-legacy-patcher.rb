cask "opencore-legacy-patcher" do
  version "2.2.0"
  sha256 "4437144a7d39f7dbf7f86d3b9730216049587af3c261f9468da8ad87d5501a25"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher.pkg",
      verified: "github.com/dortania/OpenCore-Legacy-Patcher/"
  name "OpenCore Legacy Patcher"
  desc "Patcher to run Big Sur and later (11.x-14.x) on unsupported Macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  pkg "OpenCore-Patcher.pkg"

  uninstall launchctl: [
              "com.dortania.opencore-legacy-patcher.auto-patch",
              "com.dortania.opencore-legacy-patcher.macos-update",
              "com.dortania.opencore-legacy-patcher.rsr-monitor",
            ],
            pkgutil:   "com.dortania.opencore-legacy-patcher",
            delete:    [
              "/Applications/OpenCore-Patcher.app",
              "/Library/Application Support/Dortania",
            ]
end
