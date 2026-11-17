class Termtastic < Formula
  desc "Feature-rich Meshtastic console client"
  homepage "https://github.com/acelot/termtastic"
  version "1.0.0-beta7"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta7/termtastic-aarch64-apple-darwin.tar.gz"
      sha256 "70a82df2316aa398839c556f2637d85fe9968b1e410454ba7ded4d131095a4e7"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta7/termtastic-x86_64-apple-darwin.tar.gz"
      sha256 "0636ccff8553b4a9ae8192f15694b0dc8a4bb8e1899a209e93621f824eada8e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta7/termtastic-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c714344162639456bd9edaf96b538d50cd3af62280296a5ba635e7616c87c84e"
    end
    on_intel do
      url "https://github.com/acelot/termtastic/releases/download/v1.0.0-beta7/termtastic-x86_64-unknown-linux-musl.tar.gz"
      sha256 "efce6674acedbab0fb0b509b895d132d72f6041ace75d9b41e41c9ac8ec2b904"
    end
  end

  def install
    bin.install "termtastic"
  end

  test do
    assert_predicate bin/"termtastic", :executable?
  end
end
