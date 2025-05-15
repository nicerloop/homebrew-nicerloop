cask "replaywebpage" do
  version "2.3.9"
  sha256 "c1bc84e1b6f0da593e132f89600b4c0ac455f19df360e561526d047294882123"

  url "https://github.com/webrecorder/replayweb.page/releases/download/v#{version}/ReplayWeb.page-#{version}.dmg",
      verified: "github.com/webrecorder/replayweb.page/"
  name "ReplayWeb.page"
  desc "Web Archive Replay"
  homepage "https://replayweb.page/"

  app "ReplayWeb.page.app"
end
