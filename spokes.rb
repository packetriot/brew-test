class Spokes < Formula
  desc "Spokes is an HTTP and TCP tunneling server."
  homepage "https://packetriot.com/enterprise"
  url "https://download.packetriot.com/linux/tarballs/spokes-1.0.5.tar.gz"
  sha256 "71731ebe663a01074dcf9b4146e56d331edc1b1f2630b0bf463a92537b4ed7af"
  license ""

  bottle :unneeded

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    bin.install "usr/bin/spokes"
    system "zsh", "--exec", "install.sh"
  end

  def uninstall
    system "uninstall.sh"
  end 

  test do
    system "false"
  end
end


