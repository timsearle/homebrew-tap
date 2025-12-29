class SwiftDependencyGraph < Formula
  desc "Dependency graph generator for Xcode + SwiftPM projects"
  homepage "https://github.com/timsearle/swift-dependency-graph"
  url "https://github.com/timsearle/swift-dependency-graph/releases/download/v0.15.0/DependencyGraph-macos-arm64.zip"
  sha256 "ce89db654dd77607f51cefbc08cee98e75dccc590d60aa6d51389340c5ed4bd5"
  version "0.15.0"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "DependencyGraph"
  end

  test do
    system "#{bin}/DependencyGraph", "--help"
  end
end
