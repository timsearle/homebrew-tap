class SwiftDependencyGraph < Formula
  desc "Dependency graph generator for Xcode + SwiftPM projects"
  homepage "https://github.com/timsearle/swift-dependency-graph"
  url "https://github.com/timsearle/swift-dependency-graph/releases/download/v0.1.0/DependencyGraph-macos-arm64.zip"
  sha256 "070b6875b01cfd1878a6ddcac8d76eba6078b29e179a58eb92cd277b446e542a"
  version "0.1.0"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "DependencyGraph"
  end

  test do
    system "#{bin}/DependencyGraph", "--help"
  end
end
