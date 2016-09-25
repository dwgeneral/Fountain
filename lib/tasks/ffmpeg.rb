# http://askubuntu.com/questions/598324/convert-a-video-to-a-fixed-screen-size-by-cropping-and-resizing
# ffmpeg -i in.mp4 -filter:v "crop=240(w):120(h):240(top):120(bottom)" -c:a copy out.mp4

# To crop a 80×60 section, starting from position (200, 100):
# ffmpeg -i in.mp4 -filter:v "crop=80:60:200:100" -c:a copy out.mp4

# Crop 20 pixels from the top, and 20 from the bottom:
# The filter will automatically center the crop if x and y are omitted such as in this example.

ffmpeg -i fountain.mp4 -ss 00:00:43 -t 00:00:40 -c copy fountain_ok.mp4
