class GithubSync < Formula
  desc "GitHub organization repository sync/backup tool with parallel cloning, filtering, progress bars, and JSON summary"
  homepage "https://github.com/SphereCircle/sc-tools-homebrew"
  url "https://github.com/SphereCircle/sc-tools-homebrew/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "4813d918f33c973daf1a056e1d16f4d37b3351db32b37287a502ec09a6ddb728"
  license "MIT"

  depends_on "bash"
  depends_on "jq"
  depends_on "git"

  def install
    bin.install "scripts/github-sync.sh" => "github-sync"
  end

  test do
    output = shell_output("#{bin}/github-sync --help")
    assert_match "Usage:", output
  end
end
