class Cinder < Formula
  desc "Developer CLI for Canton Network: runs filters over a validator's PQS"
  homepage "https://github.com/InfraDAO/canton-indexer-releases"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/cinder-aarch64-darwin"
      sha256 "bc969e13adeabe045a0d4a04fab04ab868265b2bd158d093ecf0b7df2d29641c"
    end
    on_intel do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/cinder-x86_64-darwin"
      sha256 "eddd76e7d58defe0fa5394372d60c100ed35434d587a5c4f6b5b2ed368c7847c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/cinder-aarch64-linux"
      sha256 "a4cfc3bd39af6dce5cbd78e9dfbc85521493ce4b15ff1e48126d899d08ec4dd2"
    end
    on_intel do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/cinder-x86_64-linux"
      sha256 "f19f6dbf98fe74fdf4d02be5126c4f36b4fcb564655402b95065b983fb080e6f"
    end
  end

  def install
    binary = Dir["cinder-*"].first || "cinder"
    bin.install binary => "cinder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cinder --version")
  end
end
