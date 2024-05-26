cd /
rm -rf apoolminer_linux_autoupdate_v1.4.1.tar
rm -rf apoolminer_linux_autoupdate_v1.4.1
wget https://github.com/apool-io/apoolminer/releases/download/v1.4.1/apoolminer_linux_autoupdate_v1.4.1.tar
tar -xvf apoolminer_linux_autoupdate_v1.4.1.tar
cd /apoolminer_linux_autoupdate_v1.4.1
variable1=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
sed -i "s/test_accountname/CP_c4uaciihm3 --worker LStarD${variable1}/g" ./run_qubic_cpu.sh
sed -i "s/CP_c4uaciihm3/CP_c4uaciihm3 --worker LStarD ${variable1}/g" ./run_qubic_cpu.sh
cd /etc/init.d
echo "正在部署..." > qubic.sh
chmod a+x qubic.sh
update-rc.d qubic.sh defaults
cd /apoolminer_linux_autoupdate_v1.4.1
nohup ./run_qubic_cpu.sh &
ps -ef | grep apool
