cask "jdkmon" do
  version "17.0.59"

  on_intel do
    url "https://github.com/HanSolo/JDKMon/releases/download/#{version}/JDKMon-#{version}.pkg"
    sha256 "5a9a8a48f6cf109206ac16bedc527998d4c7ab2c9c123e987092be2a22e8e840"
    pkg "JDKMon-#{version}.pkg"
  end
  on_arm do
    url "https://github.com/HanSolo/JDKMon/releases/download/#{version}/JDKMon-#{version}-aarch64.pkg"
    sha256 "ea7d05c877fe26bfe64a7030ba447844be4e8bfc5cd9a319471b882df988d47b"
    pkg "JDKMon-#{version}-aarch64.pkg"
  end

  name "jdkmon"
  desc "Little tool that monitors your installed JDK's and inform you about updates"
  homepage "https://github.com/HanSolo/JDKMon"

  uninstall pkgutil: "eu.hansolo.fx.jdkmon"
end
