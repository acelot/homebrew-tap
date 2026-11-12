class Termtastic < Formula
  desc "Feature-rich Meshtastic console client"
  homepage "https://github.com/acelot/termtastic"
  version "1.0.0-beta4"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta4/termtastic-aarch64-apple-darwin.tar.gz"
      sha256 "774f6c8f66967803f76802b287c1ea62d55e245c7c8ec1b7756eb5a30a9b0b99"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta4/termtastic-x86_64-apple-darwin.tar.gz"
      sha256 "a40258414fe2d1edf16ee6e0c8a01a5c535b0250291c11e6977e12379c2933de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta4/termtastic-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3af86f63e6c9e0c7bfd1691e5d6bf3ed4229e292454c191467a58bd11ee5f8cb"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta4/termtastic-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1e61cd4c0d37e49301a8e6440e92a9629ac1ff3d83c163af6c4dace24a52eed4"
    end
  end

  def install
    bin.install "termtastic"
  end

  test do
    assert_predicate bin/"termtastic", :executable?
  end
end
