cask "jdkmon" do
  arch arm: "-aarch64", intel: ""

  version "17.0.69"
  sha256 arm:   "e5afcbc994b4e1f622fa8f48725fe76afb7055183d09e9483a79e545a547060a",
         intel: "8ee7621291135f1188c7801178b1e2fd58a6fc647edb5530a01c4c4f66e4a5c9"

  url "https://github.com/HanSolo/JDKMon/releases/download/#{version}/JDKMon-#{version}#{arch}.pkg"
  name "jdkmon"
  desc "Little tool that monitors your installed JDK's and inform you about updates"
  homepage "https://github.com/HanSolo/JDKMon"

  pkg "JDKMon-#{version}#{arch}.pkg"

  uninstall pkgutil: "eu.hansolo.fx.jdkmon"
end
