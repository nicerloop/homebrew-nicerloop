class Pdfbox < Formula
  desc "Open source Java tool for working with PDF documents"
  homepage "https://pdfbox.apache.org"
  url "https://www.apache.org/dyn/closer.lua?path=/pdfbox/2.0.21/pdfbox-app-2.0.21.jar"
  mirror "https://archive.apache.org/dist/pdfbox/2.0.21/pdfbox-app-2.0.21.jar"
  sha256 "bffefcd7e71b1907b1a2026d9e568ae102c0e1a7a998dfc305e8382530d8cc68"

  bottle :unneeded

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    Pathname.glob("#{libexec}/*.jar") do |file|
      bin.write_jar_script file, "pdfbox"
    end
  end
end
