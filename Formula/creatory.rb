class Creatory < Formula
  desc "CLI from Creatory Studio"
  homepage "https://github.com/topbs/creatory-cli"
  url "https://github.com/topbs/creatory-cli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "f784c8d82b6a91a145fc72e4debca1a513283e6fe02892d914062f8293431ff9"
  license "MIT"

  def install
    # The archive extracts to creatory-cli-#{version}/
    # Homebrew automatically changes to this directory
    bin.install "creatory"
  end

  def post_install
    # Ensure execute permissions are set after installation
    chmod 0755, bin/"creatory"
  end

  test do
    # Test that the binary exists and is executable
    assert_predicate bin/"creatory", :exist?
    assert_predicate bin/"creatory", :executable?
    
    # Test that it can run and shows help
    output = shell_output("#{bin}/creatory --help")
    assert_match "creatory", output.downcase
  end
end
