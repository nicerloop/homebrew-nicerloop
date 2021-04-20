class Pdfbox < Formula
  desc "Open source Java tool for working with PDF documents"
  homepage "https://pdfbox.apache.org"
  url "https://www.apache.org/dyn/closer.lua?path=/pdfbox/2.0.23/pdfbox-app-2.0.23.jar"
  mirror "https://archive.apache.org/dist/pdfbox/2.0.23/pdfbox-app-2.0.23.jar"
  sha256 "4485d9e6713f5b9c93824a0eb54e57717d3fd736244734c6276b65e17eab5cae"

  bottle :unneeded

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    Pathname.glob("#{libexec}/*.jar") do |file|
      bin.write_jar_script file, "pdfbox"
    end
  end
end
