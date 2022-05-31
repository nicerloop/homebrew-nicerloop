cask "dbptk" do
  version "2.6.0"
  sha256 "3d3f2832da92d110098758dd2c88d111789e8e03c2b3a9abe7fd5975de18daad"

  url "https://github.com/keeps/dbptk-desktop/releases/download/v#{version}/dbptk-desktop-#{version}.dmg",
      verified: "https://github.com/keeps/dbptk-desktop"
  name "Database Preservation Toolkit"
  desc "Set of tools to store relational databases in a standard archival format"
  homepage "https://database-preservation.com/"

  app "dbptk-desktop.app"
end
