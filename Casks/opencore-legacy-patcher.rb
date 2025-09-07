cask "opencore-legacy-patcher" do
  version "2.4.1"
  sha256 "a8c0732c197b49337d2b8b970ce57f5151495a2dac300e1f93e802a0261e188d"

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
