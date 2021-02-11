class Spokes < Formula
  desc "Spokes is an HTTP and TCP tunneling server."
  homepage "https://packetriot.com/enterprise"
  url "https://download.packetriot.com/linux/tarballs/spokes-1.0.5.tar.gz"
  sha256 "1fc44c799e1fe11fb923a2d6773b82c3401b4c9d122000686cc75f08c65dcd41"
  license ""

  bottle :unneeded

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    bin.install "usr/bin/spokes"
    system "install.sh", "#{prefix}"
  end

  def uninstall
    system "uninstall.sh", "#{prefix}"
  end 

  test do
    system "false"
  end
end


