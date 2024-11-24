source $XONSH_CONFIG_DIR/rc.d/github.xsh

FILE_NAME="silverbullet.zip"
PROJECT_NAME="silverbulletmd/silverbullet"
FILE_PATTERN="-server-windows-x86_64"
downloadGithub(FILE_NAME,PROJECT_NAME,FILE_PATTERN)

silverbullet sync https://malys-silverbulle-91.deno.dev ../silverbullet_backup
cd ../silverbullet_backup
git commit -am "Update Silverbullet backup"
git push