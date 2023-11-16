#!/bin/sh
#
# ~/.xsession
#
# Archivo de inicio de sesión personalizado para iniciar udiskie y montar unidades USB.

# Inicializar udiskie para montar unidades USB automáticamente
udiskie &
dwmblocks &
picom --config ~/.config/picom/picom.conf &
$HOME/.setwallpaper.sh
$HOME/.screenlayout/only-second-screen.sh
# Montar automáticamente particiones NTFS con ntfs-3g (ajusta las rutas según tus necesidades)
# Este es solo un ejemplo, asegúrate de que las rutas sean correctas
# Puedes agregar más comandos de montaje aquí si es necesario
if [ -d "/media/ntfs_drive" ]; then
    ntfs-3g /dev/sdb1 /mnt/ntfs_drive
    ntfs-3g /dev/sdc1 /mnt/ntfs_drive
fi

# Inicia tu entorno de escritorio o gestor de ventanas preferido
# Reemplaza "startxfce4" con el comando adecuado para tu entorno de escritorio
exec dwm

# ... o tu gestor de ventanas, según tu preferencia


#ls
