cask "opencore-legacy-patcher" do
  version "0.1.6"
  sha256 "b6d5d1b91a0305c4376ff55bb173504e734a055198fa78fc5c17d5bf9db68b31"

  url "https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/#{version}/OpenCore-Patcher.app.zip"
  name "OpenCore Legacy Patcher"
  desc "OpenCore builder to run macOS Big Sur on unsupported macs"
  homepage "https://dortania.github.io/OpenCore-Legacy-Patcher/"

  app "OpenCore-Patcher.app"
end
