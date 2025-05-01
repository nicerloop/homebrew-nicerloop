cask "replaywebpage" do
  version "2.3.5"
  sha256 "a5b5c614614e74f4ee358dc454034aa5a47762117306b4cb9ec8a04b1d52bc7a"

  url "https://github.com/webrecorder/replayweb.page/releases/download/v#{version}/ReplayWeb.page-#{version}.dmg",
      verified: "github.com/webrecorder/replayweb.page/"
  name "ReplayWeb.page"
  desc "Web Archive Replay"
  homepage "https://replayweb.page/"

  app "ReplayWeb.page.app"
end
