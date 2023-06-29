class F2c < Formula
  desc "Fortran to C translator"
  homepage "http://www.netlib.org/f2c/"
  url "http://deb.debian.org/debian/pool/main/f/f2c/f2c_20200916.orig.tar.xz"
  version "20200916"
  sha256 "84673d587268506b159d1322b18a510eb2d00af3f764d180d895300dac7f31a0"

  depends_on "libf2c"

  def install
    # f2c executable
    cd "src" do
      system "make", "-f", "makefile.u", "f2c"
      bin.install "f2c"
    end

    # man pages
    man1.install "f2c.1t"
  end

  test do
    # check if executable doesn't error out
    system "#{bin}/f2c", "--version"

    # hello world test
    (testpath/"test.f").write <<~EOS
    C comment line
          program hello
          print*, 'hello world'
          stop
          end
    EOS
    system "#{bin}/f2c", "test.f"
    assert_predicate (testpath/"test.c"), :exist?
    system ENV.cc.to_s, "-O", "-o", "test", "test.c", "-I#{Formula["libf2c"].opt_include}", "-L#{Formula["libf2c"].opt_lib}", "-lf2c"
    assert_equal " hello world\n", `#{testpath}/test`
  end
end
