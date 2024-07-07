cask "replaywebpage" do
  version "2.1.1"
  sha256 "062e527dce757a983d6a658e57177075c332cb16cf10388edf77a9df75de73fb"

  url "https://github.com/webrecorder/replayweb.page/releases/download/v#{version}/ReplayWeb.page-#{version}.dmg",
      verified: "github.com/webrecorder/replayweb.page/"
  name "ReplayWeb.page"
  desc "Web Archive Replay"
  homepage "https://replayweb.page/"

  app "ReplayWeb.page.app"
end
