class Pdfbox < Formula
  desc "Open source Java tool for working with PDF documents"
  homepage "https://pdfbox.apache.org"
  url "https://www.apache.org/dyn/closer.lua?path=/pdfbox/2.0.26/pdfbox-app-2.0.26.jar"
  mirror "https://archive.apache.org/dist/pdfbox/2.0.26/pdfbox-app-2.0.26.jar"
  sha256 "f39cbc5e6ad354f821f559eb374a860315d699ed68c3988cd0164debd6dc7044"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    Pathname.glob("#{libexec}/*.jar") do |file|
      bin.write_jar_script file, "pdfbox"
    end
  end
end
