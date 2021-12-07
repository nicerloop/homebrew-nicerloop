class SafariExtensions < Formula
  desc "A simple tool to enable or disable Safari Extensions on Non-Metal Macs"
  homepage "https://github.com/moosethegoose2213/Non-Metal-Safari-Extensions"
  url "https://github.com/moosethegoose2213/Non-Metal-Safari-Extensions.git", revision: "e20786f680c021e20e63f13770c5fa51d0091f75"
  version "2021-07-15"

  def install
    bin.install "SafariExtensions.sh"
  end
end