if [ "$1" == 'build' ] ; then
  docker build -t hls-js .
elif [ "$1" == 'run' ] ; then
  docker run --volume "$(pwd):/code" -it hls-js
fi
