class CantonIndexer < Formula
  desc "Indexing and query engine for Canton Network, reading from the PQS"
  homepage "https://github.com/InfraDAO/canton-indexer-releases"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/canton-indexer-aarch64-darwin"
      sha256 "5e6e2926f7a4f721c6b2deadabcb4d344c6cd360318cd8961efda7f2f5a037e0"
    end
    on_intel do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/canton-indexer-x86_64-darwin"
      sha256 "e77ac2df9c08dc0c522a9f7bfbd42352b06f82dc790bdef24f11829794bd9ad5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/canton-indexer-aarch64-linux"
      sha256 "20ec99d3ef9c06d8c487cbee80e6ea8a3b6af257c22a9d0ebc14100618a77c36"
    end
    on_intel do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/canton-indexer-x86_64-linux"
      sha256 "e60d138d66cacef870c25f061c7fd6ddc972a8629f9218e621eff7052131d435"
    end
  end

  def install
    binary = Dir["canton-indexer-*"].first || "canton-indexer"
    bin.install binary => "canton-indexer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/canton-indexer --version")
  end
end
