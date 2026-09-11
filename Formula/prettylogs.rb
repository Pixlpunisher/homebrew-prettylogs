class Prettylogs < Formula
  desc "Interactive terminal viewer for pretty-printing log streams"
  homepage "https://github.com/Pixlpunisher/prettylogs"
  url "https://github.com/Pixlpunisher/prettylogs.git",
      tag:      "v0.1.0",
      revision: "e1b8fbcf148efe4b9adc6a6513627f12d9d20fb7"
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
