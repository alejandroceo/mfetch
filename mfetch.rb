class Mfetch < Formula
  desc "Informacion del sistema para macOS, estilo neofetch (logo + colores)"
  homepage "https://github.com/TU_USUARIO/mfetch"
  url "https://github.com/TU_USUARIO/mfetch/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "PEGA_AQUI_EL_SHA256_DEL_TARBALL"
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
