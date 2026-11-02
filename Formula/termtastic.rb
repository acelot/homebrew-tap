class Termtastic < Formula
  desc "Feature-rich Meshtastic console client"
  homepage "https://github.com/acelot/termtastic"
  version "1.0.0-alpha6"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-alpha6/termtastic-aarch64-apple-darwin.tar.gz"
      sha256 "89285db3fcf04cd3c323ba6d87a5eb56097510798a890ca6d1d3f11e028c0638"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-alpha6/termtastic-x86_64-apple-darwin.tar.gz"
      sha256 "909b7b3ccf7438c88b8541999c2024b30ca06d007721c0e5b08ce3124c1dd9d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-alpha6/termtastic-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6221b13045da9fb96c45a07dd8036e2e6786e0ca237a49c933e342e695cc8be1"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-alpha6/termtastic-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bf308023e345a2df282138ae2d407ba866d01d52a87e44d46813325d8913f4f4"
    end
  end

  def install
    bin.install "termtastic"
  end

  test do
    assert_predicate bin/"termtastic", :executable?
  end
end
