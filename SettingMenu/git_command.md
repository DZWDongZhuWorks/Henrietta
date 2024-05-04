1. 安裝git，並完成帳號設定

    sudo apt update
    sudo apt install git
    git --version # check installation was successful
    git config --global user.name "DZWDongZhuWorks"
    git config --global user.email "a80764jackytw@gmail.com"
    git config --list

2. 移動到目標跟目錄，並且初始化倉庫

    cd /path/to/your/project  
    git init  

3. 設定`.gitignore`

    touch .gitignore # 確保終端操作目錄是/code

    # 忽略所有日誌文件
    *.log

    # 忽略臨時文件夾
    tmp/

    # 忽略編譯產生的執行文件
    *.exe
    *.dll
    *.so

    # 忽略腳本與金鑰
    SettingMenu/script/CyberPower_PPB_Linux+32bit_v4.10.1.sh
    SettingMenu/script/CyberPower_PPB_Linux+64bit_v4.9.0.sh
    sshKeyHere/
    sslKeyHere/

4. 由於硬碟掛載路徑問題，當 Git 倉庫的位置看起來不安全時（例如，當前使用者無法證明對該目錄的所有權），Git 會阻止操作以防止潛在的安全風險。

    fatal: detected dubious ownership in repository at '/srv/dev-disk-by-uuid-89fac8a0-bcac-4167-8ec3-03d8baa856b3/henriettaRAID/HenriettaData/code'  
    To add an exception for this directory, call:  
            git config --global --add safe.directory /srv/dev-disk-by-uuid-89fac8a0-bcac-4167-8ec3-03d8baa856b3/henriettaRAID/HenriettaData/code  
    
    使用指令該指令將該路徑於痊癒配置中設為安全路徑

5.  添加檔案至倉庫  

    git add .

6. 查看暫存區檔案

    git status

7. 將這些檔案提交到倉庫。

    git commit -m "Initial commit"

8. 在GitHub創建新的倉庫

9. 建立 GitHb SSH

    確保本機SSH KEY位於/root/.ssh/id_rsa.pub  
    或使用 ssh-keygen建立  
    並將該公鑰添加至github 個人設定中

10. 配置 Git 使用 SSH

    git remote -v # 確認是使用SSH模式或是HTTPS模式
    git remote set-url origin git@github.com:DZWDongZhuWorks/Henrietta.git # 如要切換為SSH，使用之

11. 在創建 GitHub 倉庫後，GitHub 會提供倉庫的 URL。將這個 URL 添加到您的本地倉庫作為一個新的遠程端點。

    git remote add origin https://github.com/DZWDongZhuWorks/Henrietta.git

12. 將變更推送至github

    git push -u origin master

