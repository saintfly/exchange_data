:: AD(vokins)：https://raw.githubusercontent.com/vokins/yhosts/master/hosts
:: play ： https://raw.githubusercontent.com/sy618/hosts/master/p
:: YouTube ： https://raw.githubusercontent.com/sy618/hosts/master/y
:: fq(racaljk)：https://raw.githubusercontent.com/racaljk/hosts/master/hosts
::


set CUR_PATH=%CD%
:: change to hosts directory
cd /d c:\Windows\System32\drivers\etc

:: use bash on ubuntu on win10 to run wget.
bash -c "wget https://raw.githubusercontent.com/vokins/yhosts/master/hosts -O hosts_ad"
bash -c "wget https://raw.githubusercontent.com/sy618/hosts/master/p -O hosts_play"
bash -c "wget https://raw.githubusercontent.com/sy618/hosts/master/y -O hosts_youtube"
bash -c "wget https://raw.githubusercontent.com/racaljk/hosts/master/hosts -O hosts_fq"

copy hosts_ad+hosts_play+hosts_youtube+hosts_fq hosts /y

:: refresh DNS
ipconfig /flushdns

:: back to original directory.
cd /d %CUR_PATH%

