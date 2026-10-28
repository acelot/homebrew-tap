class Termtastic < Formula
  desc "Feature-rich Meshtastic console client"
  homepage "https://github.com/acelot/termtastic"
  version "1.0.0-alpha5"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-alpha5/termtastic-aarch64-apple-darwin.tar.gz"
      sha256 "0e6297a91de95037693e8edfc98b4dc84617ca579d43586bb62b30450abaaa0b"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-alpha5/termtastic-x86_64-apple-darwin.tar.gz"
      sha256 "c60e84db59731c9b27a2c3f41a8996802c1627df5e8f21a364e56084bac4ed8b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-alpha5/termtastic-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1cbe3d93a151bd4946d9e704ad3e621ce0c5eabfb58160754845eb86faaffc84"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-alpha5/termtastic-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4496016a1e58274f29687afe5dae623684e47458bab7b3e1dc3ed6d1434cb14e"
    end
  end

  def install
    bin.install "termtastic"
  end

  test do
    assert_predicate bin/"termtastic", :executable?
  end
end
