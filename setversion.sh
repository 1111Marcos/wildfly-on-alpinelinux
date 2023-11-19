#!/bin/sh

# This APK Package version
OLDPKGVERSION=1.29.0
NEWPKGVERSION=1.30.0

# Wildfly version (double quoted)
OLDWILDFLYVERSION=29.0.1.Final
NEWWILDFLYVERSION=30.0.0.Final

if [ $# -eq 0 ]; then
   cat << EOF

setversion.sh:
This is a break to help you understand version upgrade/downgrade of this package.

Changing variables on setversion.sh script:
   --o OLDPKGVERSION=1.29.0
   --o NEWPKGVERSION=1.30.0
   --o OLDWILDFLYVERSION=29.0.1.Final
   --o NEWWILDFLYVERSION=30.0.0.Final

   and running this script with an argument its sufficient to do an upgrade version
   of Wildfly Appserver (https://github.com/wildfly/wildfly/releases).

   $ # Run script like this 
   $ ./setversion ok	

   $ # And then, running:
   $ abuild -r

EOF
   exit 1;
fi

for TARGET in `find -type f -exec grep -li "wildflyver=" {} \;`;
do
  if [ "$TARGET" != "./setversion.sh" ];then
     echo "Updating "$TARGET"..."
     sed -i -e "s/pkgver=${OLDPKGVERSION}/pkgver=${NEWPKGVERSION}/g" $TARGET
     sed -i -e "s/wildflyver=\"${OLDWILDFLYVERSION}\"/wildflyver=\"${NEWWILDFLYVERSION}\"/g" $TARGET
  fi
done
