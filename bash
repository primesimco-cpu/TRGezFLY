cd gezfly
# (isteğe bağlı) push'tan ÖNCE bozulma var mı diye doğrula — boş çıkmalı:
grep -rnP "[\x{2018}\x{2019}\x{201C}\x{201D}]" src i18n *.mjs *.ts 2>/dev/null && echo "BOZUK TIRNAK VAR" || echo "temiz"

rm -rf .git
git init
git add -A
git commit -m "GezFly: tertemiz baytlar"
git branch -M main
git remote add origin https://github.com/primesimco-cpu/TRGezFLY.git
git push -u --force origin main
