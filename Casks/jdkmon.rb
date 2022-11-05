cask "jdkmon" do
  version "17.0.39"

  on_intel do
    url "https://github.com/HanSolo/JDKMon/releases/download/#{version}/JDKMon-#{version}.pkg"
    sha256 "4b622287cd8578dd26f870ce331da8b555b6a8d12377e12a0b29342f0f8f9d60"
    pkg "JDKMon-#{version}.pkg"
  end
  on_arm do
    url "https://github.com/HanSolo/JDKMon/releases/download/#{version}/JDKMon-#{version}-aarch64.pkg"
    sha256 "03e544384a8e45a43a4cd16c7dc525dd6f904821355e244eb41deb0cfc41ba90"
    pkg "JDKMon-#{version}-aarch64.pkg"
  end

  name "jdkmon"
  desc "Little tool that monitors your installed JDK's and inform you about updates"
  homepage "https://github.com/HanSolo/JDKMon"

  uninstall pkgutil: "eu.hansolo.fx.jdkmon"
end
