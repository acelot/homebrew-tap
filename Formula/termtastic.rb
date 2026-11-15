class Termtastic < Formula
  desc "Feature-rich Meshtastic console client"
  homepage "https://github.com/acelot/termtastic"
  version "1.0.0-beta5"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta5/termtastic-aarch64-apple-darwin.tar.gz"
      sha256 "a71ef87904ddcbbba49f54618913dea89039741fe23df197b95ec07d296172c2"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta5/termtastic-x86_64-apple-darwin.tar.gz"
      sha256 "3ebf578599a0eb81c075514b47d24394ef24398f463552112111560b9a41b29d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta5/termtastic-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "09e3477a36d3d0b01b5c9c32f8e3f1d0b0a712fd60dcc7466d9a93e89845039f"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta5/termtastic-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1f2739c23e722d0040aff077249e40f9ba49ef56ad8dad60bef8b89635f5555d"
    end
  end

  def install
    bin.install "termtastic"
  end

  test do
    assert_predicate bin/"termtastic", :executable?
  end
end
