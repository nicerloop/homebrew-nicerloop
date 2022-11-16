cask "xntfs-pro" do
  version "1.2.2,2022110301"
  sha256 "1c6607cf00f72273b668c4a0ffd626b333b4a5037a4caaf31c454145228031b7"

  url "https://api.7littlemen.com/download/ntfsretail/NTFS%20Pro%20by%20Omi%20Installer.signed.#{version.csv.first}.pkg",
      verified: "https://api.7littlemen.com/download/ntfsretail"
  name "NTFS Pro by Omi"
  name "xNTFS Pro"
  desc "Mount, write and repair NTFS disks"
  homepage "https://okaapps.com/product/1580856488"

  livecheck do
    strategy :sparkle
    url "https://api.7littlemen.com/download/ntfsretail/appcast.xml"
  end

  pkg "NTFS Pro by Omi Installer.signed.#{version.csv.first}.pkg"

  uninstall     quit:    "com.omni.mac.utility.website.ntfs",
                kext:    "com.omni.ntfs-support.kext",
                pkgutil: "com.omnisoftware.retail.xNTFS"
end
