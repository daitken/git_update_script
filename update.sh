for f in */ ; do
  cd $f
  if [ -d .git ]
   then
    echo Checking for update in $f ...
    git pull origin
  fi
  cd ..
done

