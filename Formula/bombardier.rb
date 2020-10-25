class Bombardier < Formula
  desc "Fast cross-platform HTTP benchmarking tool written in Go"
  homepage "https://github.com/codesenberg/bombardier"
  url "https://github.com/codesenberg/bombardier/releases/download/v1.2.1/bombardier-linux-amd64"
  version "1.2.1"
  sha256 "c09b094e8c939b5f449d83fa8d931bfc3f2e8bdcf6d3d0927018eb54d6722ad4"
  license "MIT"

  def install
    bin.install "bombardier-linux-amd64" => "bombardier"
  end

  test do
    assert_equal "bombardier version v#{version} linux/amd64", shell_output("#{bin}/bombardier --version 2>&1").chomp
  end
end
