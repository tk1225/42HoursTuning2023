for i in {1..2}
do
  bash run.sh | tail -40 >> score.txt;
done
