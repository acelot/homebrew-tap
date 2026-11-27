class Termtastic < Formula
  desc "Feature-rich Meshtastic console client"
  homepage "https://github.com/acelot/termtastic"
  version "1.0.0-rc.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-rc.1/termtastic-aarch64-apple-darwin.tar.gz"
      sha256 "9f013857a0e626c2d4501e1e524f0b7a17c773abce88c143795287f1dd3a2b4c"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-rc.1/termtastic-x86_64-apple-darwin.tar.gz"
      sha256 "9f293adc0faeed87402fa003c43ab22626d5273a532d11720cd691118a8b775c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-rc.1/termtastic-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0aa4ff1f41781e2365baeca792ca7947b4b2b811ee8309a52df8bf68f3a45f8f"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-rc.1/termtastic-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0a35e23f1233637c9d141b45cddc4e16fcb1265bdc269614a6df8370e2262823"
    end
  end

  def install
    bin.install "termtastic"
  end

  test do
    assert_predicate bin/"termtastic", :executable?
  end
end
