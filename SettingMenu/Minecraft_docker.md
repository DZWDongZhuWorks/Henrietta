## 安裝minecraft docker 
1. Paper server 安裝指令  
docker run -d -it \
  --name mc \
  -e MEMORYSIZE="28G" \
  -e INIT_MEMORY=1G -e MAX_MEMORY=28G \
  -p 25565:25565/tcp \
  -p 25565:25565/udp \
  -e EULA=TRUE \
  -e "TZ=Asia/Taipei" \
  -e ONLINE_MODE=TRUE \
  -v /home/mcserver:/data:rw \
  marctv/minecraft-papermc-server:latest  

  [參考](https://github.com/mtoensing/Docker-Minecraft-PaperMC-Server)

2. 下載multiverse plugin  
將下載到的plugin jar放置到server資料夾中的plugin  
當中包含
- Multiverse-Core 
- Multiverse-Portals
- Multiverse Nether portals  

[參考-新增plugin](https://docs.papermc.io/paper/adding-plugins)  
[參考-Multiverse插件群](https://hangar.papermc.io/Multiverse/Multiverse-Core)  
[Multiverse-地獄終界維護器](https://github.com/Multiverse/Multiverse-Core/wiki/Basics-(NetherPortals))  
[Multiverse說明](https://github.com/Multiverse/Multiverse-Core/wiki)  

3. 重啟server
在server輸入`plugins`，確保plugin被安裝成功

4. 將舊有的地圖複製進server目錄中  
並且確保該地圖的權限不是root之類的超高級別，導致server沒有權限讀取  

例如在該情況中temp為欲新增之地圖，而world為server所創建的地圖，可見兩者權限不同，使用各種方法讓temp可被Server讀取。  
![alt text](./images/image13.png)  
`sudo chown -R 9001:root temp`

5. 
- 將icon圖示複製至server資料夾中，並改名為server-icon.png  
- 修改server資料夾中的server.properties


- Vanilla server 安裝指令
    > docker run -d -it -p 25565:25565 --name mc -e "TZ=Asia/Taipei" \  
    -e EULA=TRUE -e ONLINE_MODE=TRUE -e INIT_MEMORY=1G -e MAX_MEMORY=28G \  
    -v /home/dzw_mc_data:/data itzg/minecraft-server

    > 當中 /home/dzw_mc_data為本地實體位置
