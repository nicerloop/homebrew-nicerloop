cask "opencore-legacy-patcher" do
  version "1.5.0"
  sha256 "15f70a148a5490331a4b9f2b3cb7403b594a049250edd537f95a4b083e9efa9d"

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
