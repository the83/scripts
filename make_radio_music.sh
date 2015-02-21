mkdir files
COUNTER=0
for f in *.{mp3,aif,m4a}
do
  COUNTER=$[$COUNTER +1]
  ffmpeg -i "${f}" -f s16le -acodec pcm_s16le -ar 44000 -ac 1 files/${COUNTER}.raw
done
