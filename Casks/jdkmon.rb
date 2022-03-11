cask "jdkmon" do
  version "17.0.23"

  if Hardware::CPU.intel?
    url "https://github.com/HanSolo/JDKMon/releases/download/#{version}/JDKMon-#{version}.pkg"
    sha256 "8f523dd673bf9d3f0aab8063219667efc98007f8a3080fc304b051c9ac4eea67"
    pkg "JDKMon-#{version}.pkg"
  else
    url "https://github.com/HanSolo/JDKMon/releases/download/#{version}/JDKMon-#{version}-aarch64.pkg"
    sha256 "9167e057b99c2536d20d12cc010c7829f1d7be9f614028ef5047f9ce463f7b6d"
    pkg "JDKMon-#{version}-aarch64.pkg"
  end

  name "jdkmon"
  desc "Little tool that monitors your installed JDK's and inform you about updates"
  homepage "https://github.com/HanSolo/JDKMon"

  uninstall pkgutil: "eu.hansolo.fx.jdkmon"
end
