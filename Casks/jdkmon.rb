cask "jdkmon" do
  version "17.0.22"

  if Hardware::CPU.intel?
    url "https://github.com/HanSolo/JDKMon/releases/download/#{version}/JDKMon-#{version}.pkg"
    sha256 "037dec98bec5ab70bceb88aa4d7fbaf7d1baa92f29fa114e13547c76c6f6b4b0"
    pkg "JDKMon-#{version}.pkg"
  else
    url "https://github.com/HanSolo/JDKMon/releases/download/#{version}/JDKMon-#{version}-aarch64.pkg"
    sha256 "3b76560f9353382209ef6eb8ee2561f603d6475b8fcaab20d0e207940276dc0b"
    pkg "JDKMon-#{version}-aarch64.pkg"
  end

  name "jdkmon"
  desc "Little tool that monitors your installed JDK's and inform you about updates"
  homepage "https://github.com/HanSolo/JDKMon"

  uninstall pkgutil: "eu.hansolo.fx.jdkmon"
end
