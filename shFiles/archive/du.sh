date > /var/www/marshirov/data/nn2000.info/public_html/du.txt
#du -sh --timekh /var/www/marshirov > /var/www/marshirov/data/nn2000.info/public_html//du.txt
#du -sh --timekh /var/www/g00/* >> /var/www/marshirov/data/nn2000.info/public_html/du.txt
echo ""
#du -sh --time /var/www/* | sort -hr >> /var/www/marshirov/data/nn2000.info/public_html/du.txt
#echo "" >> /var/www/marshirov/data/nn2000.info/public_html/du.txt
du -sh --time /var/www/g00/* | sort -hr >> /var/www/marshirov/data/nn2000.info/public_html/du.txt
echo "" >> /var/www/marshirov/data/nn2000.info/public_html/du.txt
du -sh --time /var/www/g01/* | sort -hr >> /var/www/marshirov/data/nn2000.info/public_html/du.txt
echo "" >> /var/www/marshirov/data/nn2000.info/public_html/du.txt
du -sh --time /var/www/g02/* | sort -hr  >> /var/www/marshirov/data/nn2000.info/public_html/du.txt
echo "" >> /var/www/marshirov/data/nn2000.info/public_html/du.txt
du -sh --time /var/www/g03/* | sort -hr >> /var/www/marshirov/data/nn2000.info/public_html/du.txt
echo "" >> /var/www/marshirov/data/nn2000.info/public_html/du.txt
du -sh --time /var/www/g04/* | sort -hr >> /var/www/marshirov/data/nn2000.info/public_html/du.txt
echo "" >> /var/www/marshirov/data/nn2000.info/public_html/du.txt
du -sh --time /var/www/g05/* | sort -hr >> /var/www/marshirov/data/nn2000.info/public_html/du.txt
echo "" >> /var/www/marshirov/data/nn2000.info/public_html/du.txt
du -sh --time /var/www/g06/* | sort -hr >> /var/www/marshirov/data/nn2000.info/public_html/du.txt
echo "" >> /var/www/marshirov/data/nn2000.info/public_html/du.txt

cd /var/www/marshirov/data/bim.nn2000.info/public_html/testing/results
ls -lAFn *.txt >> /var/www/marshirov/data/nn2000.info/public_html/du.txt
cd ~
#du -sh --timekh /var/www/g04/* >> /var/www/marshirov/data/nn2000.info/public_html/du.txt
#du -sh --timekh /var/www/g05/* >> /var/www/marshirov/data/nn2000.info/public_html/du.txt
#du -sh --timekh /var/www/g06/* >> /var/www/marshirov/data/nn2000.info/public_html/du.txt


