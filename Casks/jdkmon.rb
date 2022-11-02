cask "jdkmon" do
  version "17.0.37"

  on_intel do
    url "https://github.com/HanSolo/JDKMon/releases/download/#{version}/JDKMon-#{version}.pkg"
    sha256 "c116c2d91a117d4f99c8f46c584a554c22962c86e9a0d5137f2afc5eee73c733"
    pkg "JDKMon-#{version}.pkg"
  end
  on_arm do
    url "https://github.com/HanSolo/JDKMon/releases/download/#{version}/JDKMon-#{version}-aarch64.pkg"
    sha256 "5022cea824c3355846e001aebd5305617cd72ece2e33f1fd6e5ca7fa4ea18b60"
    pkg "JDKMon-#{version}-aarch64.pkg"
  end

  name "jdkmon"
  desc "Little tool that monitors your installed JDK's and inform you about updates"
  homepage "https://github.com/HanSolo/JDKMon"

  uninstall pkgutil: "eu.hansolo.fx.jdkmon"
end
