class Icode < Formula
  desc "CNES static code analysis tool"
  homepage "https://github.com/cnescatlab/i-CodeCNES"
  url "https://github.com/cnescatlab/i-CodeCNES/releases/download/5.0.0/icode-5.0.0.zip"
  sha256 "8f623204b1e9a2987f61ae90e49d837d8e0f4821d133c5f65a56075c9887fc8b"
  license "EPL-1.0"

  livecheck do
    url :stable
    strategy :github_releases
  end

  depends_on "openjdk"

  def install
    chmod("+x", "icode")
    libexec.install Dir["*"]
    Pathname.glob("#{libexec}/icode") do |file|
      basename = "" + file.basename
      (bin/basename).write_env_script file, Language::Java.overridable_java_home_env
    end
  end

  test do
    system bin/"icode", "--version"
  end
end
