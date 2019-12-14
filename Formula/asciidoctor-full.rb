class AsciidoctorFull < Formula
  desc "Text processor and publishing toolchain for AsciiDoc"
  homepage "https://asciidoctor.org/"
  url "https://github.com/asciidoctor/asciidoctor/archive/v2.0.10.tar.gz"
  sha256 "afca74837e6d4b339535e8ba0b79f2ad00bd1eef78bf391cc36995ca2e31630a"

  depends_on "ruby" if MacOS.version <= :sierra

  resource "asciidoctor-diagram" do
    url "https://github.com/asciidoctor/asciidoctor-diagram/archive/1.5.19.tar.gz"
    sha256 "28b59b33d297eb95c4945544a6d7947590aafb40d258abcdf9c7bad7459087f0"
  end

  resource "asciidoctor-pdf" do
    url "https://github.com/asciidoctor/asciidoctor-pdf/archive/v1.5.0.beta.7.tar.gz"
    sha256 "eb1e3192bc90e1b7fa06527f84e8abb8d9a0dcba4fb89652c51bd908ceab5c0d"
  end

  resource "asciidoctor-epub3" do
    url "https://github.com/asciidoctor/asciidoctor-epub3/archive/v1.5.0.alpha.9.tar.gz"
    sha256 "e0999e79af85db6ac20ae95f603806bf70cd42929ad688f5ab55b6e9d3e85fdd"
  end

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "build", "asciidoctor.gemspec"
    system "gem", "install", "asciidoctor-#{version}.gem"

    resource("asciidoctor-diagram").stage do
      system "gem", "build", "asciidoctor-diagram.gemspec"
      system "gem", "install", "asciidoctor-diagram-1.5.19.gem"
    end

    resource("asciidoctor-pdf").stage do
      system "gem", "build", "asciidoctor-pdf.gemspec"
      system "gem", "install", "asciidoctor-pdf-1.5.0.beta.7.gem"
    end

    resource("asciidoctor-epub3").stage do
      system "gem", "build", "asciidoctor-epub3.gemspec"
      system "gem", "install", "asciidoctor-epub3-1.5.0.alpha.9.gem"
    end

    bin.install Dir[libexec/"bin/*"]
    bin.env_script_all_files(libexec/"bin", :GEM_HOME => ENV["GEM_HOME"])
  end

  test do
    (testpath/"test.adoc").write("= AsciiDoc is Writing Zen")
    system bin/"asciidoctor", "-b", "html5", "-o", "test.html", "test.adoc"
    assert_match "<h1>AsciiDoc is Writing Zen</h1>", File.read("test.html")
  end
end
