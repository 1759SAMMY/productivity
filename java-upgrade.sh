#Script to be used for upgrading the Java
#!/bin/sh
set -x
echo "**************************"
echo "Starting the configuration changes to upgrade the Java"
echo `date`
sed -i -- 's/jdk1.8.0_202/jdk1.8.0_361/g' /u0/Oracle12c/Middleware/Oracle_Home/inventory/Components/oracle.wls.core.app.server/12.2.1.4.0/context.xml
sed -i -- 's/jdk1.8.0_202/jdk1.8.0_361/g' /u0/Oracle12c/Middleware/Oracle_Home/inventory/Clone/ng_clone.xml
sed -i -- 's/jdk1.8.0_202/jdk1.8.0_361/g' /u0/Oracle12c/Middleware/Oracle_Home/oui/bin/launch.sh
sed -i -- 's/jdk1.8.0_202/jdk1.8.0_361/g' /u0/Oracle12c/Middleware/Oracle_Home/oui/bin/viewInventory.sh
sed -i -- 's/jdk1.8.0_202/jdk1.8.0_361/g' /u0/Oracle12c/Middleware/Oracle_Home/oui/bin/compareInventory.sh
sed -i -- 's/jdk1.8.0_202/jdk1.8.0_361/g' /u0/Oracle12c/Middleware/Oracle_Home/oui/bin/setProperty.sh
sed -i -- 's/jdk1.8.0_202/jdk1.8.0_361/g' /u0/Oracle12c/Middleware/Oracle_Home/oui/.globalEnv.properties
sed -i -- 's/jdk1.8.0_202/jdk1.8.0_361/g' /u0/Oracle12c/Middleware/Oracle_Home/user_projects/domains/TEST_domain/bin/setNMJavaHome.sh
sed -i -- 's/jdk1.8.0_202/jdk1.8.0_361/g' /u0/Oracle12c/Middleware/Oracle_Home/user_projects/domains/TEST_domain/bin/setDomainEnv.sh
sed -i -- 's/jdk1.8.0_202/jdk1.8.0_361/g' /u0/Oracle12c/Middleware/Oracle_Home/user_projects/domains/TEST_domain/init-info/domain-info.xml
sed -i -- 's/jdk1.8.0_202/jdk1.8.0_361/g' /u0/Oracle12c/Middleware/Oracle_Home/user_projects/domains/TEST_domain/init-info/startscript.xml
sed -i -- 's/jdk1.8.0_202/jdk1.8.0_361/g' /u0/Oracle12c/Middleware/Oracle_Home/user_projects/domains/TEST_domain/init-info/tokenValue.properties
sed -i -- 's/jdk1.8.0_202/jdk1.8.0_361/g' /u0/Oracle12c/Middleware/Oracle_Home/user_projects/domains/TEST_domain/init-info/nodemanager-properties.xml
sed -i -- 's/jdk1.8.0_202/jdk1.8.0_361/g' /u0/Oracle12c/Middleware/Oracle_Home/user_projects/domains/TEST_domain/nodemanager/nodemanager.properties
echo "Completed the configuration changes to upgrade the Java"
exit;

