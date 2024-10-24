cask "replaywebpage" do
  version "2.2.0"
  sha256 "900d1ed40438e374081dd1c5faebae0e97121bf2ea20cb61049dfc1d05532653"

  url "https://github.com/webrecorder/replayweb.page/releases/download/v#{version}/ReplayWeb.page-#{version}.dmg",
      verified: "github.com/webrecorder/replayweb.page/"
  name "ReplayWeb.page"
  desc "Web Archive Replay"
  homepage "https://replayweb.page/"

  app "ReplayWeb.page.app"
end
