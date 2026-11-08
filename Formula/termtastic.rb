class Termtastic < Formula
  desc "Feature-rich Meshtastic console client"
  homepage "https://github.com/acelot/termtastic"
  version "1.0.0-beta1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta1/termtastic-aarch64-apple-darwin.tar.gz"
      sha256 "b573942cc581460903e26f49c9c0aee4a6118f03b7c03110a4f982192eeba64d"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta1/termtastic-x86_64-apple-darwin.tar.gz"
      sha256 "7ba1fd0c8c03d2e979919bc95de2beecac83dfda30665e7e4a7939a247669610"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta1/termtastic-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c985b0b44867591fc76d7a8344e558ee4c226d63fd023e102794a248bc439d94"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta1/termtastic-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6460faea43a5dbd8ea3801bd7edecd513acb064eccc21edbc874a7e3ca5bd480"
    end
  end

  def install
    bin.install "termtastic"
  end

  test do
    assert_predicate bin/"termtastic", :executable?
  end
end
