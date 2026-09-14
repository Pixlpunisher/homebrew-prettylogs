class Prettylogs < Formula
  desc "Interactive terminal viewer for pretty-printing log streams"
  homepage "https://github.com/Pixlpunisher/prettylogs"
  url "https://github.com/Pixlpunisher/prettylogs.git",
      tag:      "v0.1.2",
      revision: "18b84ff04595eb857752c16b42d14a890b23ee7a"
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
