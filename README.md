These are supplementary packages for [devkitPro pacman](https://devkitpro.org/wiki/devkitPro_pacman) to enable easier development using [libogc2](https://github.com/extremscorner/libogc2)/devkitPPC.

If an issue arise with devkitPro-provided packages following installation of these packages or package repository, please perform a clean re-install of their distribution *without* these packages.
devkitPro cannot, and will not, provide support for these packages.

## Adding repository

```
sudo (dkp-)pacman-key --recv-keys C8A2759C315CFBC3429CC2E422B803BA8AA3D7CE --keyserver keyserver.ubuntu.com
sudo (dkp-)pacman-key --finger C8A2759C315CFBC3429CC2E422B803BA8AA3D7CE
sudo (dkp-)pacman-key --lsign-key C8A2759C315CFBC3429CC2E422B803BA8AA3D7CE
```

Using `sudo` is not necessary with MSYS2 and always uses `pacman-key`.

### Linux

Append to `/etc/pacman.conf` if using `pacman`, or `/opt/devkitpro/pacman/etc/pacman.conf` if using `dkp-pacman`.

```ini
[extremscorner-devkitpro]
Server = https://packages.extremscorner.org/devkitpro/linux/$arch
```

### Windows (MSYS2)

Append to `/etc/pacman.conf` relative to MSYS2 installation.

```ini
[extremscorner-devkitpro]
Server = https://packages.extremscorner.org/devkitpro/windows/$arch
```
