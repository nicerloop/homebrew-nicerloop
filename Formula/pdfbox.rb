class Pdfbox < Formula
  desc "Open source Java tool for working with PDF documents"
  homepage "https://pdfbox.apache.org"
  url "https://www.apache.org/dyn/closer.lua?path=/pdfbox/2.0.20/pdfbox-app-2.0.20.jar"
  mirror "https://archive.apache.org/dist/pdfbox/2.0.20/pdfbox-app-2.0.20.jar"
  sha256 "5300b92552cb6bd13a9c87ff36d1394382427e101ae2b0b02a9d9e5fd257db65"

  bottle :unneeded

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    Pathname.glob("#{libexec}/*.jar") do |file|
      bin.write_jar_script file, "pdfbox"
    end
  end
end
