class Termtastic < Formula
  desc "Feature-rich Meshtastic console client"
  homepage "https://github.com/acelot/termtastic"
  version "1.0.0-beta9"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta9/termtastic-aarch64-apple-darwin.tar.gz"
      sha256 "a333da3779086bbbb7a3ba8b92a3efd12d8a3d025e605ced08243731e4c98f14"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta9/termtastic-x86_64-apple-darwin.tar.gz"
      sha256 "538fc5751e2014664290594746cc79cc1b5880c10ac7a6744409fd8747f939e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta9/termtastic-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be8574a641ecf51b50b57f27eaeaa45e9e79f6e80a8838112d9a8e51a2730ea4"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta9/termtastic-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7087db34877148aa8396d80908e61368e04f20b6e528ae80af9e0a4d86265698"
    end
  end

  def install
    bin.install "termtastic"
  end

  test do
    assert_predicate bin/"termtastic", :executable?
  end
end
