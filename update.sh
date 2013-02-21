for f in */ ; do
  cd $f
  if [ -d .git ]
   then
    echo $f
    git pull origin
  fi
  cd ..
done

