class Cinder < Formula
  desc "Developer CLI for Canton Network: runs filters over a validator's PQS"
  homepage "https://github.com/InfraDAO/canton-indexer-releases"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/cinder-aarch64-darwin"
      sha256 "4ba6d1c4bd798116ebdb1ebbc1a5a2931eeb05d8ada749be3d802e1317cd7854"
    end
    on_intel do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/cinder-x86_64-darwin"
      sha256 "f83daaf011dc54f4b987810c55b7c61998547b161193513e5b6796ab60ce3109"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/cinder-aarch64-linux"
      sha256 "74a6b77ac5f4a5b2c4985d777f5a2c35af735080fb4c339c6469cf10c16f56b4"
    end
    on_intel do
      url "https://github.com/InfraDAO/canton-indexer-releases/releases/download/v#{version}/cinder-x86_64-linux"
      sha256 "b8339bcbb0c5ebcaff3d12ca949f88359819a6a60c3d45726f65cf5ccc2619a6"
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
