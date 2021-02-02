class Pdfbox < Formula
  desc "Open source Java tool for working with PDF documents"
  homepage "https://pdfbox.apache.org"
  url "https://www.apache.org/dyn/closer.lua?path=/pdfbox/2.0.22/pdfbox-app-2.0.22.jar"
  mirror "https://archive.apache.org/dist/pdfbox/2.0.22/pdfbox-app-2.0.22.jar"
  sha256 "22886c68ea14925012135f147e45e71fbf9dc910e05d390338524e064e613b7f"

  bottle :unneeded

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    Pathname.glob("#{libexec}/*.jar") do |file|
      bin.write_jar_script file, "pdfbox"
    end
  end
end
