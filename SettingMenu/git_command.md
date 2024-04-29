1. 安裝git，並完成帳號設定

    sudo apt update
    sudo apt install git
    git --version # check installation was successful
    git config --global user.name "DZWDongZhuWorks"
    git config --global user.email "a80764jackytw@gmail.com"
    git config --list

2. 移動到目標跟目錄  

    cd /path/to/your/project  
    git init  

2. 由於硬碟掛載路徑問題，當 Git 倉庫的位置看起來不安全時（例如，當前使用者無法證明對該目錄的所有權），Git 會阻止操作以防止潛在的安全風險。

    fatal: detected dubious ownership in repository at '/srv/dev-disk-by-uuid-89fac8a0-bcac-4167-8ec3-03d8baa856b3/henriettaRAID/HenriettaData/code'  
    To add an exception for this directory, call:  
            git config --global --add safe.directory /srv/dev-disk-by-uuid-89fac8a0-bcac-4167-8ec3-03d8baa856b3/henriettaRAID/HenriettaData/code  
    
    使用指令該指令將該路徑於痊癒配置中設為安全路徑
    
