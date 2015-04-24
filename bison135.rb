class Bison135 < Formula
  homepage "https://www.gnu.org/software/bison/"
  url "http://ftpmirror.gnu.org/bison/bison-1.35.tar.gz"
  mirror "https://ftp.gnu.org/gnu/bison/bison-1.35.tar.gz"
  sha256 "710d4fd96568f17ede71fa1b4205931df7e5761248b0c8a291008c1d3c7b780e"

  keg_only :provided_by_osx, "Some formulae require a newer version of bison."

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
