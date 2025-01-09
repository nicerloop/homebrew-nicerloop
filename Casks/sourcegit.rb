cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2025.01"
  sha256 arm:   "8e60802f0287b41374be247d0392bfeae6f1f211d1ab5ad97bda109ac6b4e1d8",
         intel: "ff609146ce667f83c096698904dfbceda8b0f32f2822a685e8923c5b526792ba"

  url "https://github.com/sourcegit-scm/sourcegit/releases/download/v#{version}/sourcegit_#{version}.osx-#{arch}.zip"
  name "sourcegit"
  desc "Cross-platform GUI client for GIT users"
  homepage "https://github.com/sourcegit-scm/sourcegit"

  livecheck do
    strategy :github_releases
  end

  app "SourceGit.app"
end
