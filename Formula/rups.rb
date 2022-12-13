class Rups < Formula
  desc "PDF Diagnostic Tool for Reading and Updating PDF Syntax & Debugging PDF code"
  homepage "https://itextpdf.com/products/rups"
  url "https://github.com/itext/i7j-rups/releases/download/7.2.4/iText7-RUPS-7.2.4-only-jars.zip"
  sha256 "574861936aabdc6d0afdf230410185ceb98c734770e2cccff57b3c008fe552c5"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    Pathname.glob("#{libexec}/*.jar") do |file|
      bin.write_jar_script file, "rups"
    end
  end
end
