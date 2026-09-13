class Prettylogs < Formula
  desc "Interactive terminal viewer for pretty-printing log streams"
  homepage "https://github.com/Pixlpunisher/prettylogs"
  url "https://github.com/Pixlpunisher/prettylogs.git",
      tag:      "v0.1.1",
      revision: "a51cd35e4cd275ada6aaa888f97680d4853530a9"
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
