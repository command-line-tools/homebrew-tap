class Bombardier < Formula
  desc "Fast cross-platform HTTP benchmarking tool written in Go"
  homepage "https://github.com/codesenberg/bombardier"
  url "https://github.com/codesenberg/bombardier/releases/download/v1.2.5/bombardier-linux-amd64"
  version "1.2.5"
  sha256 "0a8338f93a2cfa7686c0c5836f6ab7ad65275e483fbf517df46df4d306682cc2"
  license "MIT"

  def install
    bin.install "bombardier-linux-amd64" => "bombardier"
  end

  test do
    assert_equal "bombardier version v#{version} linux/amd64", shell_output("#{bin}/bombardier --version 2>&1").chomp
  end
end
