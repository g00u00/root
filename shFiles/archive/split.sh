cp ~/marshirov.tar.bz2 ~/data/nn2000.info/share; 
cd ~/data/nn2000.info/share;
split -b 200m marshirov.tar.bz2;
rm marshirov.tar.bz2;

