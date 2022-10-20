cask "ntfs-pro-by-omi" do
  version "1.2.1"
  sha256 "a59b515e77eeae44420c15448627526c121ffe37a92002bb50df76bf36c5ed15"

  url "https://api.7littlemen.com/download/ntfsretail/NTFS%20Pro%20by%20Omi%20Installer.signed.#{version}.pkg",
      verified: "https://api.7littlemen.com/download/ntfsretail"
  name "NTFS Pro by Omi"
  name "xNTFS Pro"
  desc "Mount, write and repair NTFS disks"
  homepage "https://okaapps.com/product/1580856488"

  livecheck do
    strategy :sparkle
  end

  pkg "NTFS Pro by Omi Installer.signed.#{version}.pkg"

  uninstall     quit:    "com.omni.mac.utility.website.ntfs",
                kext:    "com.omni.ntfs-support.kext",
                pkgutil: "com.omnisoftware.retail.xNTFS"
end
