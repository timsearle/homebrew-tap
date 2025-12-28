class SwiftDependencyGraph < Formula
  desc "Dependency graph generator for Xcode + SwiftPM projects"
  homepage "https://github.com/timsearle/swift-dependency-graph"
  url "https://github.com/timsearle/swift-dependency-graph/releases/download/v0.7.2/DependencyGraph-macos-arm64.zip"
  sha256 "5fb9fdca70cc3c1c275e836b96f818d5b89793953fb4a89f26330908ea3b815c"
  version "0.7.2"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "DependencyGraph"
  end

  test do
    system "#{bin}/DependencyGraph", "--help"
  end
end
