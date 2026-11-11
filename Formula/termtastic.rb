class Termtastic < Formula
  desc "Feature-rich Meshtastic console client"
  homepage "https://github.com/acelot/termtastic"
  version "1.0.0-beta3"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta3/termtastic-aarch64-apple-darwin.tar.gz"
      sha256 "9fb32ed5e4fccee8db30656a58f76cce0d04404fe4b23e6ae833c271682f33c7"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta3/termtastic-x86_64-apple-darwin.tar.gz"
      sha256 "d156f31c58c59bcd219877c3c566395d7a95cf71df2df5d786454dd984ee050d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta3/termtastic-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f5afda0b8115c5455754f239d66dc6b07e3ef788a96d60bb46d103bc92fa69c3"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta3/termtastic-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4e445858ca8c74a2cee2262974d78cca5e84d2e59451614569f7350ca8f36049"
    end
  end

  def install
    bin.install "termtastic"
  end

  test do
    assert_predicate bin/"termtastic", :executable?
  end
end
