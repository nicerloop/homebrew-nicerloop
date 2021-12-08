class Arx < Formula
  desc "Data Anonymization Tool"
  homepage "https://arx.deidentifier.org"
  url "https://github.com/arx-deidentifier/arx/releases/download/v3.9.0/arx-3.9.0-osx-64.jar"
  sha256 "d7f9b98280fe2d866dddb01c2e3f0e09c336143b5218f688645c8825f0fdb3a2"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    Pathname.glob("#{libexec}/*.jar") do |file|
      bin.write_jar_script file, "arx", "-XstartOnFirstThread"
    end
  end
end
