cask "jdkmon" do
  version "17.0.43"

  on_intel do
    url "https://github.com/HanSolo/JDKMon/releases/download/#{version}/JDKMon-#{version}.pkg"
    sha256 "e842fb3bf11aec00c7f4aa5be37b9a9a4d0905703b8f3c1c1333bd044a6fed93"
    pkg "JDKMon-#{version}.pkg"
  end
  on_arm do
    url "https://github.com/HanSolo/JDKMon/releases/download/#{version}/JDKMon-#{version}-aarch64.pkg"
    sha256 "58e05944b55d12ee5e4d755a40b89140fc5761ec72ae79457bdb94e888e31d46"
    pkg "JDKMon-#{version}-aarch64.pkg"
  end

  name "jdkmon"
  desc "Little tool that monitors your installed JDK's and inform you about updates"
  homepage "https://github.com/HanSolo/JDKMon"

  uninstall pkgutil: "eu.hansolo.fx.jdkmon"
end
