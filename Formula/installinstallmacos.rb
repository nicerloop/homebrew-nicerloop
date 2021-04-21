class Installinstallmacos < Formula
  desc "create macOS Installer applications disk images via Apple's softwareupdate catalogs"
  homepage "https://github.com/munki/macadmin-scripts"
  url "https://github.com/munki/macadmin-scripts.git", revision: "03ef2ba0fed4a6e99de0a0acf7ea9e3949a47287"
  version "2021-03-16"

  def install
    bin.install "installinstallmacos.py"
  end
end
