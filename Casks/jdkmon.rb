cask "jdkmon" do
  version "17.0.41"

  on_intel do
    url "https://github.com/HanSolo/JDKMon/releases/download/#{version}/JDKMon-#{version}.pkg"
    sha256 "865ea53c197f5f3e0114ed8b269f6fc150ebc3e6cef443d45e42d7c6781cecab"
    pkg "JDKMon-#{version}.pkg"
  end
  on_arm do
    url "https://github.com/HanSolo/JDKMon/releases/download/#{version}/JDKMon-#{version}-aarch64.pkg"
    sha256 "6d3e45c9ee7c27834adb1a20ee178ffa71683b034bd3851282f1a49e6ff4df4a"
    pkg "JDKMon-#{version}-aarch64.pkg"
  end

  name "jdkmon"
  desc "Little tool that monitors your installed JDK's and inform you about updates"
  homepage "https://github.com/HanSolo/JDKMon"

  uninstall pkgutil: "eu.hansolo.fx.jdkmon"
end
