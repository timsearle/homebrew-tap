class SwiftDependencyGraph < Formula
  desc "Dependency graph generator for Xcode + SwiftPM projects"
  homepage "https://github.com/timsearle/swift-dependency-graph"
  url "https://github.com/timsearle/swift-dependency-graph/releases/download/v0.18.0/dependency-graph-macos-arm64.zip"
  sha256 "778bf3b8242dfa7a6327d6ccf2ebf0204a3f83fda1b8ba9fa5e447f84b55a58b"
  version "0.18.0"
  license "MIT"

  depends_on arch: :arm64

  def install
    # Transition-friendly: older archives contained `DependencyGraph`, newer contain `dependency-graph`.
    bin_name = File.exist?("dependency-graph") ? "dependency-graph" : "DependencyGraph"
    bin.install bin_name => "dependency-graph"
  end

  test do
    system "#{bin}/dependency-graph", "--help"
  end
end
