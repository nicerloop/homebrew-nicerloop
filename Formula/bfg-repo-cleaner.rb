class BfgRepoCleaner < Formula
  desc "Removes large or troublesome blobs like git-filter-branch does, but faster."
  homepage "https://rtyley.github.io/bfg-repo-cleaner/"
  url "https://repo1.maven.org/maven2/com/madgag/bfg/1.14.0/bfg-1.14.0.jar"
  sha256 "1a75e9390541f4b55d9c01256b361b815c1e0a263e2fb3d072b55c2911ead0b7"

  depends_on "openjdk"

  livecheck do
    strategy :page_match
    url "https://github.com/rtyley/bfg-repo-cleaner/releases.atom"
    regex(%r{releases/tag/v(.*)"}i)
  end

  def install
    libexec.install Dir["*"]
    Pathname.glob("#{libexec}/*.jar") do |file|
      bin.write_jar_script file, "bfg-repo-cleaner"
    end
  end
end
