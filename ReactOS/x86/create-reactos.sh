#!/bin/sh
fallocate -l4G reactos.img
chattr +C reactos.img
