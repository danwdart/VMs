#!/bin/sh
wget -c https://archive.org/download/redhat-5.2_release/redhat-5.2_release_archive.torrent
ctorrent -p7881 redhat-5.2_release_archive.torrent
