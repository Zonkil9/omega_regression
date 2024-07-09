grep -B 12 "  6   0  " fort.7 | sed -e n\;d > scratchone.out
while IFS=" " read -r trashone trashtwo ok trashthree trashfour trashfive trashsix trashseven
do
  echo $ok >> scratchtwo.out
done < scratchone.out
readarray -t numbers < scratchtwo.out
echo "${numbers[1]} - ${numbers[0]}" | bc >> scratchthree.out
echo "${numbers[2]} - ${numbers[1]}" | bc >> scratchthree.out
echo "${numbers[3]} - ${numbers[2]}" | bc >> scratchthree.out
echo "${numbers[4]} - ${numbers[3]}" | bc >> scratchthree.out
echo "${numbers[5]} - ${numbers[4]}" | bc >> scratchthree.out
echo "${numbers[6]} - ${numbers[5]}" | bc >> scratchthree.out
echo "0.5" >> scratchfour.out
echo "1.5" >> scratchfour.out
echo "2.5" >> scratchfour.out
echo "3.5" >> scratchfour.out
echo "4.5" >> scratchfour.out
echo "5.5" >> scratchfour.out
paste scratchfour.out scratchthree.out > scratchfive.out
gnuplot << EOF
set terminal pngcairo size 1920,1080 enhanced font "LiberationSans-Regular.ttf,20"
set output "plot.png"
plot 'scratchfive.out' with linespoints ps 3 lw 2
EOF
rm scratch*.out
