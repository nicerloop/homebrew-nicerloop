cask "replaywebpage" do
  version "2.0.0"
  sha256 "02330926d6e1585d36198d134cfaa1930ec67c15dd57c72744c779eeb8c01a78"

  url "https://github.com/webrecorder/replayweb.page/releases/download/v#{version}/ReplayWeb.page-#{version}.dmg",
      verified: "github.com/webrecorder/replayweb.page/"
  name "ReplayWeb.page"
  desc "Web Archive Replay"
  homepage "https://replayweb.page/"

  app "ReplayWeb.page.app"
end
