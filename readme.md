# Instalacion de ArchLinux personalizada
## _Devosfernando_

[![N|Solid](https://raw.githubusercontent.com/devosfernando/ArchLinux/main/Archlinux.png?token=GHSAT0AAAAAACELDPBE5F37R4EWNRA4SF3MZE5RYMQ)](https://nodesource.com/products/nsolid)

## Procedimiento de instalacion:

- Se descarga la imagen ISO desde [ArchLinux.org] en la parte de abajo estan los link
- Se copia la imagen con [RUFUS] a una USB en MBR y BIOS o UEFI
- El equipo se debe bootear con cable de red conectado
- Despues de bootear en el USB, es importante no seleccionar ningun repositorio de codigo:
```sh
root@archlinux ˜ # archinstall
```
- Es importante en este momento crear el usuario katarsi y su clave:
```sh
root@archlinux ˜ # useradd katarsi
root@archlinux ˜ # passwd katarsi
```
- Se debe instalar git para poder ejecutar el proceso automatico de este repositorio, y luego clonarlo:
```sh
root@archlinux ˜ # pacman -S git
root@archlinux ˜ # git clone https://github.com/devosfernando/ArchLinux.git
root@archlinux ˜ # cd ArchLinux
root@archlinux ˜ # sh fsecuencia.sh
```

   
   [ArchLinux.org]: <https://archlinux.org/download/>
   [RUFUS]: <https://rufus.ie/es/>
