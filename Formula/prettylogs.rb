class Prettylogs < Formula
  desc "Interactive terminal viewer for pretty-printing log streams"
  homepage "https://github.com/Pixlpunisher/prettylogs"
  url "https://github.com/Pixlpunisher/prettylogs.git",
      tag:      "v0.1.0",
      revision: "ea9efb45dbbe11dbacff7bdda886715a6f3aff83"
  license "MIT"
  head "https://github.com/Pixlpunisher/prettylogs.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"prettylogs"), "./cmd/prettylogs"
  end

  test do
    system "#{bin}/prettylogs", "-h"
  end
end
