qemu-system-mips64el -M magnum -bios bios-mips/NTPROM.RAW nt4.img -cdrom winnt40wks_sp1_en.iso -monitor stdio -global ds1225y.filename=nvram -global ds1225y.size=8200 -nic user,model=dp83932
