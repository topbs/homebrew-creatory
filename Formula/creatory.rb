class Creatory < Formula
  desc "CLI from Creatory Studio"
  homepage "https://github.com/topbs/creatory-cli"
  url "https://github.com/topbs/creatory-cli/archive/refs/tags/v0.1.tar.gz"
  sha256 "362ee7145e11513dd21881bf8337aa75106eacaba56fe90a67cd780d3373912bcd "
  license "MIT"

  def install
    bin.install "creatory"
  end

  test do
    system "#{bin}/creatory"
  end
end
