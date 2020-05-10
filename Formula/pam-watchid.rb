class PamWatchid < Formula
  desc "PAM module to use the Apple Watch for authentication"
  homepage "https://github.com/thalamus/pam-watchid"
  url "https://github.com/thalamus/pam-watchid/archive/abc7533f10a86e6c2a6eb41ffeb2d3996182a198.zip"
  version "thalamus-20200108"
  sha256 "6313e19f3e04492ea8a138f23d17fb7e6a8bb7e67442b46d90ac7865ae4415f3"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  def caveats
    <<~EOS
      Edit /etc/pam.d/sudo to include as the first line: auth sufficient #{opt_lib}/pam/pam_watchid.so "reason=execute a command as root"
    EOS
  end
end
