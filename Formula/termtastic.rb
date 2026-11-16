class Termtastic < Formula
  desc "Feature-rich Meshtastic console client"
  homepage "https://github.com/acelot/termtastic"
  version "1.0.0-beta6"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta6/termtastic-aarch64-apple-darwin.tar.gz"
      sha256 "e62bb48792e85aa107e58ae8048f52827c88516ee95e4a3d2d7fe8bbb9864ae8"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta6/termtastic-x86_64-apple-darwin.tar.gz"
      sha256 "6696793584f4931b6e39acd576bccc1cf4b324ff94149b39a1c8a20e05aa9d1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta6/termtastic-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1d870b6776ff298d1c226464e1be02dff2a2f64eecffccda5ddefba31a814945"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta6/termtastic-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1255b396c2bf89c9e341e47e7335f1b0aff02000e7a77b5744929807f8816430"
    end
  end

  def install
    bin.install "termtastic"
  end

  test do
    assert_predicate bin/"termtastic", :executable?
  end
end
