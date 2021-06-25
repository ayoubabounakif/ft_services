# KILL ALL PROCESSES BEFORE STARTING
killall Google\ Chrome && killAll Discord && kill -9 $(pgrep Electron)

APP="~/Library/Application\ Support/"
GOOGLE_GOINFRE=$HOME/goinfre/Google
DISCORD_GOINFRE=$HOME/goinfre/discord
CODE_GOINFRE=$HOME/goinfre/Code
CACHES_GOINFRE=$HOME/Caches

# CREATING FOLDERS IN GOINFRE
echo "----Creating directories----"
#mkdir $GOOGLE_GOINFRE
#mkdir $DISCORD_GOINFRE
#mkdir $CODE_GOINFRE
#mkdir $CACHES_GOINFRE

# CREATING BACKUPS 
echo "----Creating backups and copying to goinfre----"

# COPYING TO GOINFRE
mv ~/Library/Application\ Support/Google/ ~/Library/Application\ Support/GoogleBackup
cp -a $APP/GoogleBackup/* $GOOGLE_GOINFRE
mv ~/Library/Application\ Support/discord/ ~/Library/Application\ Support/discordBackup && cp -a $APP/discordBackup/* $DISCORD_GOINFRE
mv ~/Library/Application\ Support/Code ~/Library/Application\ Support/CodeBackup && cp -a $APP/CodeBackup/* $CODE_GOINFRE
cp -a ~/Library/Caches/* $CACHES_GOINFRE

# SYMLINKS
echo "----Symlinkin----"
ln -s $GOOGLE_GOINFRE ~/Library/Application\ Support/
ln -s $DISCORD_GOINFRE ~/Library/Application\ Support/
ln -s $CODE_GOINFRE ~/Library/Application\ Support/

rm -rf ~/Library/Caches && ln -s $CACHES_GOINFRE ~/Library/




