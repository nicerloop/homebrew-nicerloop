class Pdfbox < Formula
  desc "Open source Java tool for working with PDF documents"
  homepage "https://pdfbox.apache.org"
  url "https://www.apache.org/dyn/closer.lua?path=/pdfbox/2.0.25/pdfbox-app-2.0.25.jar"
  mirror "https://archive.apache.org/dist/pdfbox/2.0.25/pdfbox-app-2.0.25.jar"
  sha256 "eea3fdbedc923e101cfef58dbcdc278ad0e9da808f03010c49dd48b0a399af01"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    Pathname.glob("#{libexec}/*.jar") do |file|
      bin.write_jar_script file, "pdfbox"
    end
  end
end
