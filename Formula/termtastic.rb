class Termtastic < Formula
  desc "Feature-rich Meshtastic console client"
  homepage "https://github.com/acelot/termtastic"
  version "1.0.0-alpha7"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-alpha7/termtastic-aarch64-apple-darwin.tar.gz"
      sha256 "2e6079bc7af33c97ae6aff95a3129280afff3f0ac35a682139afcc53cfc0d362"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-alpha7/termtastic-x86_64-apple-darwin.tar.gz"
      sha256 "13e8064d19780794e5c56f2f8c075fd6b6510737c8a4aee5268636903ac056af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-alpha7/termtastic-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "793a99df1e4375741e8ddabf77897bfbcde4552e029e3645065694da00e4839c"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-alpha7/termtastic-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2cfe7837a052da1e7aa610aa77e1edfa1552bb5a80f610dd000892622cd937d9"
    end
  end

  def install
    bin.install "termtastic"
  end

  test do
    assert_predicate bin/"termtastic", :executable?
  end
end
