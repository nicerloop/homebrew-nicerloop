class Sleepwatcher < Formula
  desc "Monitors sleep, wakeup, and idleness of a Mac"
  homepage "https://www.bernhard-baehr.de/"
  url "https://www.bernhard-baehr.de/sleepwatcher_2.2.1.tgz"
  sha256 "4bf1656702167871141fbc119a844d1363d89994e1a67027f0e773023ae9643e"
  license "GPL-3.0-or-later"

  livecheck do
    url :homepage
    regex(/href=.*?sleepwatcher[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "172bfc7d967f6abbbe0770db635dd39d1d908a7aa1d3ab27cdd147acc793ca2a"
    sha256 cellar: :any_skip_relocation, big_sur:       "67579f4fdfb784d9769430c59e7b1deeca98324b6758e23be1ffb223c44cc183"
    sha256 cellar: :any_skip_relocation, catalina:      "45c9c42ac76f9e9f85b0dbc2cb2251fe74448322196ac0ba10b93c416121db2a"
    sha256 cellar: :any_skip_relocation, mojave:        "eb160c23f9d92aed8d4bdfa24607a5bb343ad65dd487cb7a8570ac479bd05dd7"
    sha256 cellar: :any_skip_relocation, high_sierra:   "2c050aa5845cdf24b06f17bc1b4191941e4cf57cf1092f17fe35fe0e7f28159a"
    sha256 cellar: :any_skip_relocation, sierra:        "0cecea617ee9334f717a2e2e0424b944dedcc7cd403776c1cf6ff67352b96f4c"
  end

  def install
    # Adjust Makefile to build native binary only
    inreplace "sources/Makefile" do |s|
      s.gsub!(/^(CFLAGS)_PPC.*$/, "\\1 = #{ENV.cflags} -prebind")
      s.gsub!(/^(CFLAGS_I386|CFLAGS_X86_64)/, "#\\1")
      s.change_make_var! "BINDIR", "$(PREFIX)/sbin"
      s.change_make_var! "MANDIR", "$(PREFIX)/share/man"
      s.gsub!(/^(.*?)CFLAGS_I386(.*?)[.]i386/, "\\1CFLAGS\\2")
      s.gsub!(/^(.*?CFLAGS_X86_64.*?[.]x86_64)/, "#\\1")
      s.gsub!(/^(\t(lipo|rm).*?[.](i386|x86_64))/, "#\\1")
      s.gsub! "-o root -g wheel", ""
    end

    # Build and install binary
    cd "sources" do
      mv "../sleepwatcher.8", "."
      system "make", "install", "PREFIX=#{prefix}"
    end
  end

  service do
    run [opt_sbin/"sleepwatcher", "-V", "-s", "#{ENV["HOME"]}/.sleep", "-w", "#{ENV["HOME"]}/.wakeup"]
    run_type :immediate
    keep_alive true
  end

  def caveats
    <<~EOS
      For SleepWatcher to work, you will need to write sleep and
      wakeup scripts, located here when using brew services:

        ~/.sleep
        ~/.wakeup
    EOS
  end
end
