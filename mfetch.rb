class Mfetch < Formula
  desc "Informacion del sistema para macOS, estilo neofetch (logo + colores)"
  homepage "https://github.com/alejandroceo/mfetch"
  url "https://github.com/alejandroceo/mfetch/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "e51a4e346624a3bfeafad26e37f5a6a3496b051f9997f4a301ac4c697f900ea8"
  license "MIT"

  def install
    bin.install "mfetch"
  end

  def caveats
    <<~EOS
      Para que mfetch se muestre automaticamente cada vez que abras
      una terminal nueva, agrega esta linea al final de tu ~/.zshrc:

        mfetch

      Luego recarga la configuracion:

        source ~/.zshrc
    EOS
  end

  test do
    system "#{bin}/mfetch", "--version"
  end
end
