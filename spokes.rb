class Spokes < Formula
  desc "Spokes is an HTTP and TCP tunneling server."
  homepage "https://packetriot.com/enterprise"
  url "https://download.packetriot.com/linux/tarballs/spokes-1.0.5.tar.gz"
  sha256 "d2f9b21a222524d73069278367a4262caa0e8709310ec0fce81308a26059827f"
  license ""

  bottle :unneeded

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    bin.install "usr/bin/spokes"
    system "install.sh"
  end

  def uninstall
    system "uninstall.sh", "#{prefix}"
  end 

  test do
    system "false"
  end
end


