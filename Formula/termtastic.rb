class Termtastic < Formula
  desc "Feature-rich Meshtastic console client"
  homepage "https://github.com/acelot/termtastic"
  version "1.0.0-beta11"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta11/termtastic-aarch64-apple-darwin.tar.gz"
      sha256 "b736bcdf77a880b94cbfaee389247c2dae42c445c9a2bc40cb668f2abd83fd6d"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta11/termtastic-x86_64-apple-darwin.tar.gz"
      sha256 "326f99f60b543c62584556527a3c530125d45e47ec545ce1bb4494d16d9448cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta11/termtastic-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8dae0ff5e2d1dca4141c605039c5261a797d1499d814dfb79c4a7791e66083fc"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta11/termtastic-x86_64-unknown-linux-musl.tar.gz"
      sha256 "85987ccd3d3de4e355ca709bf0e3b8a799911c59e29d3573056555b77cd2af2f"
    end
  end

  def install
    bin.install "termtastic"
  end

  test do
    assert_predicate bin/"termtastic", :executable?
  end
end
