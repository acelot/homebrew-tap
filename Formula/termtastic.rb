class Termtastic < Formula
  desc "Feature-rich Meshtastic console client"
  homepage "https://github.com/acelot/termtastic"
  version "1.0.0-beta10"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta10/termtastic-aarch64-apple-darwin.tar.gz"
      sha256 "f2ed17615433d9003d766e9d2311ed16269a2e0ea0922e934d1eeb40b965b729"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta10/termtastic-x86_64-apple-darwin.tar.gz"
      sha256 "578212355365d9e2f3218806c04325397ed0c9a945ce95bd33095d8dde3cd0cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta10/termtastic-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fe19ecc154f199dca05e405bd7e2577ee591a71ad5663fb1a56e609ebdb1739b"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta10/termtastic-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a758011984a6cdbb450cff2201937e811b93e363e685141be59b8e5210885705"
    end
  end

  def install
    bin.install "termtastic"
  end

  test do
    assert_predicate bin/"termtastic", :executable?
  end
end
