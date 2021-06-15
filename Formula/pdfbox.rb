class Pdfbox < Formula
  desc "Open source Java tool for working with PDF documents"
  homepage "https://pdfbox.apache.org"
  url "https://www.apache.org/dyn/closer.lua?path=/pdfbox/2.0.24/pdfbox-app-2.0.24.jar"
  mirror "https://archive.apache.org/dist/pdfbox/2.0.24/pdfbox-app-2.0.24.jar"
  sha256 "7d87176a83196152b44e579cdad603a090564350a74b6f2ce06bec37a778fae9"

  bottle :unneeded

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    Pathname.glob("#{libexec}/*.jar") do |file|
      bin.write_jar_script file, "pdfbox"
    end
  end
end
