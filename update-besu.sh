#!/bin/sh
archiveUrl=$1
besuRootDir=/opt/besu
archiveName=besu.tar.gz
besuCurrentDir="$besuRootDir/besu"
besuSymLink="current"
archiveDirOutputNamePrefix="besu-*"
sudo rm -Rf *tar.gz *.zip $besuSymLink $besuCurrentDir
cd $besuRootDir
echo "downloading besu archive: $1"
sudo wget -O $archiveName $archiveUrl
sudo tar xvzf $archiveName
sudo mv $archiveDirOutputNamePrefix $besuCurrentDir
sudo ln -s $besuCurrentDir $besuSymLink
