class Creatory < Formula
  desc "CLI from Creatory Studio"
  homepage "https://github.com/topbs/creatory-cli"
  url "https://github.com/topbs/creatory-cli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "f784c8d82b6a91a145fc72e4debca1a513283e6fe02892d914062f8293431ff9"
  license "MIT"

  def install
    chmod "+x", "creatory"
    bin.install "creatory"
  end

  test do
    system "#{bin}/creatory"
  end
end
