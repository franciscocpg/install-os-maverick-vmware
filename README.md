# Pré-requisitos
* Ter o arquivo **OS X Mavericks 10.9 Retail VMware Image.7z**
* Ter [VMware Player instalado Versão 6.0.5](https://my.vmware.com/web/vmware/free#desktop_end_user_computing/vmware_player/6_0|PLAYER-605|product_downloads) (Testado na versão 64 bits para linux) ou [VMware Player instalado Versão 7.1.2](https://my.vmware.com/web/vmware/free#desktop_end_user_computing/vmware_player/7_0)(Testado na versão 64 bits para linux, porém apresentou muita instabilidade).
* Para a versão 6.0.5 caso dê um erro de compilação de kernel após a instalação desse produto, baixe o arquivo [vmnet.tar](vmware-lib-wrapper/vmnet.tar) substituindo na pasta /usr/lib/vmware/modules/source/ e tente executar novamente. O comando abaixo pode ser utilizado.
```bash
sudo wget https://raw.githubusercontent.com/franciscocpg/install-os-maverick-vmware/master/vmware-lib-wrapper/vmnet.tar -O /usr/lib/vmware/modules/source/vmnet.tar
```

# install-unlock-vmware-player (versão 6.0.5)

1. Download **OS X Mavericks 10.9 Retail VMware Image.7z**
2. Extrair **OS X Mavericks 10.9 Retail VMware Image.7z** (Serão descompactados 12gb).
3. Executar [unlock-all-v130/linux/install.sh](unlock-all-v130/linux/install.sh)
```bash
cd unlock-all-v130/linux
./install.sh
```

# install-unlock-vmware-player (versão 7.1.2)

1. Download **OS X Mavericks 10.9 Retail VMware Image.7z**
2. Extrair **OS X Mavericks 10.9 Retail VMware Image.7z** (Serão descompactados 12gb).
3. Executar [unlocker207/lnx-install.sh](unlocker207/lnx-install.sh)
```bash
cd unlocker207
./lnx-install.sh
```
# install-os-maverick-vmware
4. Abrir **OS X Mavericks/OS X Mavericks.vmx** no VMWare Player
4. Configuração utilizada
![virtual machine settings_007](https://cloud.githubusercontent.com/assets/3680556/8146356/164f9aca-120a-11e5-9488-1d9e93df3ec2.png)

5. Escolher opção "I copied it"
6. Irá abrir uma tela com a maça e ficará rodando um **loading** (Se esse tempo passar de 5 minutos, provavelmente algo não deu certo nas etapas anteriores)

7. Seguir passos:
![os x mavericks - vmware player non-commercial use only _001](https://cloud.githubusercontent.com/assets/3680556/8146308/0bcc4d3e-1208-11e5-9813-236326d58f09.png)
![os x mavericks - vmware player non-commercial use only _002](https://cloud.githubusercontent.com/assets/3680556/8146341/92e4ecbc-1209-11e5-80a8-a52a5658759a.png)
![os x mavericks - vmware player non-commercial use only _003](https://cloud.githubusercontent.com/assets/3680556/8146340/92e32fda-1209-11e5-9e3b-3ad55ec8b305.png)
Criar um id ou logar com o id existente (lembrando que o id é e-mail)
![os x mavericks - vmware player non-commercial use only _004](https://cloud.githubusercontent.com/assets/3680556/8146342/92e70024-1209-11e5-92ea-f4b6d1121f20.png)
![os x mavericks - vmware player non-commercial use only _005](https://cloud.githubusercontent.com/assets/3680556/8146404/f76fa242-120b-11e5-8d8f-10fba84eb837.png)
![os x mavericks - vmware player non-commercial use only _006](https://cloud.githubusercontent.com/assets/3680556/8146405/f77637d8-120b-11e5-9392-33555ef233bf.png)
![os x mavericks - vmware player non-commercial use only _007](https://cloud.githubusercontent.com/assets/3680556/8146414/74b5f5f8-120c-11e5-9346-a7a3554fcaa1.png)
![os x mavericks - vmware player non-commercial use only _008](https://cloud.githubusercontent.com/assets/3680556/8146400/c91d1d70-120b-11e5-977b-5074dd43b4e1.png)

# Instalar vmware tools
1. Utilizando darwin.iso **/usr/lib/vmware/isoimages/darwin.iso**
![virtual machine settings_001](https://cloud.githubusercontent.com/assets/3680556/8146426/1c7a2386-120d-11e5-80da-8b32258a2452.png)
2. Após salvar, abrir "Install VMWare tools" e seguir passo a passo, reiniciando no final
![os x mavericks - vmware player non-commercial use only _009](https://cloud.githubusercontent.com/assets/3680556/8146439/261a1e4a-120e-11e5-9356-62ddb17aef0d.png)

# Alterar idioma e Fuso Horário
1. Em **system preferences** ir em **Language & Region** e adicionar idioma **Português (Brasil)**. Aproveitar para setar formato do relógio como 24 horas. Em seguida fechar a janela para salvar. Reiniciar quando solicitado. 
2. Clicar em cima do relógio e **Abrir as preferências Data e Hora**. Ir na aba **fuso horário** e colocar **Sao Paulo** e deixar o mac localizar. Ir na aba **Relógio** e marcar **Exibir a hora com segundos** Em seguida fechar a janela para salvar.

# Instalar git
1. Abrir o terminal e digitar git. Clicar em **Instalar** e aguardar instalação.

# Colocar resolução full
1. Clonar esse repositório
```sh
git clone https://github.com/franciscocpg/install-os-maverick-vmware.git
```
2. Abrir no finder, descompactar o arquivo [SWTCHRX441 (Altera resolução mac OS)/SwitchResX 4.4.1/SwitchResX4.zip](https://github.com/franciscocpg/install-os-maverick-vmware/blob/master/SWTCHRX441%20(Altera%20resolu%C3%A7%C3%A3o%20mac%20OS)/SwitchResX%204.4.1/SwitchResX4.zip) e mandar Abrir o arquivo SwitchResX.prefPane para instalar SwitchResX.
3. Registrar o programa utilizando key.rtf
4. Alterar a resolução de acordo com o tamanho do monitor. Fechar a janela e salvar.
![os x mavericks - vmware player non-commercial use only _012](https://cloud.githubusercontent.com/assets/3680556/8146530/10242576-1214-11e5-8487-0723da5368e6.png)
