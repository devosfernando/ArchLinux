# Instalacion de ArchLinux personalizada
## _Devosfernando_

[![N|Solid](https://archlinux.org/static/logos/archlinux-logo-dark-90dpi.ebdee92a15b3.png)

## Procedimiento de instalacion:

- Se descarga la imagen ISO desde [ArchLinux.org] en la parte de abajo estan los link
- Se copia la imagen con [RUFUS] a una USB en MBR y BIOS o UEFI
- El equipo se debe bootear con cable de red conectado
- Despues de bootear en el USB, es importante no seleccionar ningun repositorio de codigo:
```sh
root@archlinux ˜ # archinstall
```
- Se debe instalar git para poder ejecutar el proceso automatico de este repositorio, y luego clonarlo:
```sh
root@archlinux ˜ # pacman -S git
root@archlinux ˜ # git clone https://github.com/devosfernando/ArchLinux.git
root@archlinux ˜ # cd ArchLinux
root@archlinux ˜ # sh fsecuencia.sh
```
- Es importante en este momento crear el usuario katarsi y su clave, solo si no se creo con el archinstall:
```sh
root@archlinux ˜ # useradd -m katarsi
root@archlinux ˜ # passwd katarsi
```

   
   [ArchLinux.org]: <https://archlinux.org/download/>
   [RUFUS]: <https://rufus.ie/es/>
   [archlinux.png]: <https://archlinux.org/static/logos/archlinux-logo-dark-90dpi.ebdee92a15b3.png
   

mod = "mod4"
mod1 = "alt"
mod2 = "control"
