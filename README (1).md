# mfetch

Una herramienta de línea de comandos estilo `neofetch`/`fastfetch` para macOS: logo de manzana en ASCII a la izquierda, info del sistema a la derecha, y paleta de colores abajo. Pensada para lanzarse automáticamente cada vez que abres una terminal.

```
            /             alejandro@Alejandros-MacBook-Pro-M4
           |              -----------------------------------
       ########           OS: macOS 26.5 Tahoe arm64 (25F71)
     #########            Host: Alejandros-MacBook-Pro-M4
   ###########            Kernel: Darwin 24.4.0
  ############            Uptime: 3 horas, 24 mins
  #############           Packages: 142 formulas, 18 casks (brew)
 ######################   Shell: zsh 5.9
  ####################    Terminal: iTerm.app
  ####################    CPU: Apple M4 (10)
   ##################     Memory: 9.6GiB / 16.0GiB (60%)
     ##############       Disk (/): 349GiB / 466GiB (79%)
       ##########         Battery: 87% (charging)
                          Local IP: 192.168.1.23

                          [paleta de 8 colores]
```

(En tu terminal real, el logo se ve en colores arcoíris: verde → amarillo → naranja → rojo → morado → azul, igual que el logo clásico de Apple.)

## Instalación

```bash
brew tap TU_USUARIO/mfetch
brew install mfetch
```

Al instalar, Homebrew te mostrará un mensaje (caveat) con el siguiente paso.

## Lanzarlo automáticamente al abrir la terminal

Agrega esta línea al final de tu `~/.zshrc`:

```bash
echo "mfetch" >> ~/.zshrc
source ~/.zshrc
```

A partir de ahí, cada pestaña/ventana nueva de terminal mostrará el resumen automáticamente, igual que en la captura de Kali + neofetch + lolcat.

Si usas iTerm2 con varias pestañas seguido y el output te resulta repetitivo, puedes condicionarlo a que solo se muestre en la primera shell interactiva del día, o quitar la línea cuando quieras silenciarlo.

## Uso manual

```bash
mfetch              # muestra el resumen
mfetch --no-color   # sin colores (util para logs/scripts)
mfetch --version
mfetch --help
```

## Por qué es rápido

No depende de `brew` ni de `system_profiler` (ambos lentos de invocar). Cuenta los paquetes de Homebrew leyendo directamente `Cellar/` y `Caskroom/`, y usa solo binarios nativos de Apple (`sysctl`, `vm_stat`, `df`, `scutil`, `pmset`). Corre en ~30-100ms, así que no notarás demora al abrir una terminal nueva.

## Requisitos

- macOS (usa comandos nativos de Apple)
- zsh o bash (ya vienen en macOS)

## Desinstalar

```bash
brew uninstall mfetch
brew untap TU_USUARIO/mfetch
```

## Licencia

MIT
