class Termtastic < Formula
  desc "Feature-rich Meshtastic console client"
  homepage "https://github.com/acelot/termtastic"
  version "1.0.0-beta2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta2/termtastic-aarch64-apple-darwin.tar.gz"
      sha256 "3a5f0df63d0847c8f4b0fb9c75b86c572103b2aeb6871ac6a7c51587a80a0459"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta2/termtastic-x86_64-apple-darwin.tar.gz"
      sha256 "f27bf709fc9979f4ce47f58a2da03fd55a965e8ef8e4e70a6e68e7f086dd1680"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta2/termtastic-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "58f19ce7d82411714acf58935ec4bd62bf6c710cface7cfa2811ec6568f61df6"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta2/termtastic-x86_64-unknown-linux-musl.tar.gz"
      sha256 "125177718dd0803db126e25b7056696fe7dc70141a40ba00afb5cc83c0787fa2"
    end
  end

  def install
    bin.install "termtastic"
  end

  test do
    assert_predicate bin/"termtastic", :executable?
  end
end
