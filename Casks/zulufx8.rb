cask "zulufx8" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"
  choice = Hardware::CPU.intel? ? "x86" : "arm"

  version "8.0.332,8.62.0.19-ca-fx"

  if Hardware::CPU.intel?
    sha256 "25ff097ed8246d073aaee050a3ceba0ac6116710bf87cc120bb476f21236b602"
  else
    sha256 "955e52158339a3d016820cb206d5d6bd2ba63d1a0f503d510720da4a087e90d7"
  end

  url "https://cdn.azul.com/zulu/bin/zulu#{version.csv.second}-jdk#{version.csv.first}-macosx_#{arch}.dmg",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  name "Azul Zulu Java 8 Standard Edition Development Kit with JavaFX"
  desc "OpenJDK  with JavaFX distribution from Azul"
  homepage "https://www.azul.com/"

  livecheck do
    url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&bundle_type=jdk&javafx=true&ext=dmg&os=macos&arch=#{choice}"
    regex(/zulu(\d+(?:\.\d+)*-.*?)-jdk(\d+(?:\.\d+)+)-macosx_#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  conflicts_with cask: "zulu8"
  depends_on macos: ">= :mojave"

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
