cask "zulufx8" do
  if Hardware::CPU.intel?
    version "8.0.302,8.56.0.21-ca-fx"
    sha256 "904f4497c87df3e8a9611af47718cd1a743081e7a2e32f5c6bf02682d0552482"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"

    livecheck do
      url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&ext=dmg&os=macos&arch=x86&javafx=true"
      strategy :page_match do |page|
        match = page.match(%r{url"\s*:\s*"https:.*?/zulu(\d+(?:\.\d+)*-.*?)-jdk(\d+(?:\.\d+)*)-macos}i)
        "#{match[2]},#{match[1]}"
      end
    end
  else
    version "8.0.302,8.56.0.23-ca-fx"
    sha256 "11fd4a652ffda4fdb614e3045b6396cde7068ec74068b6df7b5cbab6d575a4d0"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_aarch64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"

    livecheck do
      url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&ext=dmg&os=macos&arch=arm&javafx=true"
      strategy :page_match do |page|
        match = page.match(%r{url"\s*:\s*"https:.*?/zulu(\d+(?:\.\d+)*-.*?)-jdk(\d+(?:\.\d+)*)-macos}i)
        "#{match[2]},#{match[1]}"
      end
    end
  end

  name "Azul Zulu Java 8 Standard Edition Development Kit"
  desc "OpenJDK distribution from Azul with JavaFX"
  homepage "https://www.azul.com/"

  conflicts_with cask: "zulu8"
  depends_on macos: ">= :yosemite"

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
