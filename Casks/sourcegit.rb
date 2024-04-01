cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "8.6"
  sha256 arm:   "8f08f077c88d465d329b642c5cbb22d73861a88ca6bf76e868534c599a613b5a",
         intel: "497a22eef87102ebd9af8f6eb3450f68c4d38a9beb0d7c535ac2441d53f9188f"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/SourceGit.osx-#{arch}.zip"
  name "sourcegit"
  desc "Cross-platform GUI client for GIT users"
  homepage "https://github.com/sourcegit-scm/sourcegit"

  livecheck do
    strategy :github_releases
  end

  app "SourceGit.app"
end
