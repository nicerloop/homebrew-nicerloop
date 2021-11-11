cask "zulufx8" do
  if Hardware::CPU.intel?
    version "8.0.312,8.58.0.13-ca-fx"
    sha256 "d7557b3b4f9136df08c18d6e9bbf40e9b2f48267bbfece692bad0f0c023d884a"

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
    version "8.0.312,8.56.0.13-ca-fx"
    sha256 "8ca17c40900a62d9d0e7d697cee0574ce4c3b6f2db7eab528287d341da77208c"

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
