require 'formula'

class DscdaCli < Formula
  homepage 'https://github.com/datastax-cda/workshop-builder'
  version "0.1"
  url "https://github.com/datastax-cda/workshop-builder/releases/download/v#{version}/pace-darwin"
  sha256 "c20f24b376987f054d563e9e8e8df100ef3a4fa0a65cb962ea12a694c12d3b57"

  depends_on :arch => :x86_64

  def install
    mv "dscda-darwin", "dscda"
    bin.install "dscda"
  end

  test do
    system "#{bin}/dscda"
  end
end
