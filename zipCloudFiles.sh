
IFS='
'

DIRS=(*/)
CURRENT_DATE=`date +%Y-%m-%d`

DOWNLOAD_DIR='download_'$CURRENT_DATE
DOWNLOAD_ZIP=$DOWNLOAD_DIR'_zip'
DOWNLOAD_COMPRESS=$DOWNLOAD_ZIP'.tar.gz'

mkdir $DOWNLOAD_DIR

mkdir $DOWNLOAD_ZIP

for dir in "${DIRS[@]}"; 
do 
  echo "$DOWNLOAD_DIR/$dir"; 
  cp -R $dir $DOWNLOAD_DIR/$dir
done

# list symbolic links pointing to itself (if there is nothing here there is no need to run the next cell)

cd $DOWNLOAD_DIR && find ./ -type l -exec sh -c 'readlink -f "{}" 1>/dev/null || rm "{}"' -- "{}" \; && cd ..

# remove symbolic links pointing to itself (if any)

cd $DOWNLOAD_DIR && find ./ -type l -exec sh -c 'readlink -f "{}" 1>/dev/null || rm "{}"' -- "{}" \; && cd ..

# copy files again and this time also download symlinks content
tar -hcf - $DOWNLOAD_DIR | tar -xf - -C $DOWNLOAD_ZIP

# gz the files
tar cvfz $DOWNLOAD_COMPRESS $DOWNLOAD_ZIP
rm -rf $DOWNLOAD_DIR
rm -rf $DOWNLOAD_ZIP

