# Témalabor előkészületek és feladatok felhő robotika témakörben

A fejlesztés során VS Code szerkesztő használata javasolt a magas támogatottsága és átlátható felülete miatt. Linux alapú rendszerekkel dolgozunk, így Windows alapú gépekre a WSL2 alrendszerre valamint Docker telepítésére.

## 0. lépés - fejlesztőkörnyezet kialakítása Windows rendszeren

A WSL2 (Windows Subsystem for Linux) modul teszi lehetővé, hogy Linux kernelt tudjon futtatni a rendszerünk, ami a Linux alapú Docker image-ek kezeléséhez szükséges

1. Linux alrendszer (WSL2) telepítése
   * [Step-by-step WSL2 install](https://www.linkedin.com/pulse/step-procedure-install-wsl2-windows-run-ubuntu-using-arun-kl/)
   * Az alap Linux telepítése után *Ubuntu 22.04.3 LTS* telepítése javasolt a Microsoft Store-ból

2. Docker letöltése és telepítése
   * A Docker-t közvetlenül Windows rendszerre telepítve tudjuk használni, a WSL2 alrendszer a telepítés végén adható hozzá a Docker konfigurációból.
   * **Fontos:** a telepítés megkezdésekor az *Install required Windows components for WSL2* bepipálása
   * [Install Docker Desktop for Windows](https://docs.docker.com/desktop/install/windows-install/)
   * Docker telepítés ellenőrzése: Linux terminal ablakból a következő utasítás kiadása: `docker run hello-world`

3. Visual Studio (VS) Code letöltése és telepítése 
   * https://code.visualstudio.com/Download 
   * Windows kiegészítés:
      * WSL2 aktiválása és beállítása: [Install Ubuntu on WSL2 on Windows 11 with GUI support](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-11-with-gui-support#1-overview)
      * [Get started with Docker remote containers on WSL 2](https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-containers)

4. VS Code bővítmények hozzáadása (https://code.visualstudio.com/docs/setup/additional-components )
   * Szükséges bővítmények: [CMake Tools](https://code.visualstudio.com/docs/cpp/CMake-linux), [Docker](https://code.visualstudio.com/docs/containers/overview), [Dev Containers](https://code.visualstudio.com/docs/remote/containers-tutorial), [Remote Development](https://code.visualstudio.com/docs/remote/remote-overview)


## 01 - [Linux/Docker bevezető]()

## 02 - [Docker VNC]()

## 03 - [ROS bevezető]()

## 04 - [ROS + Gazebo]()
