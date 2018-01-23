# Taller 1

**Nombre:** Carolina Zúñiga  
**Código:** A00315292

## Descripción
En este taller deberá consignar los pasos para:
* Instalación y configuración de CentOS7
* Instalación y configuración del servidor web Apache

## Pasos para instalar centos 7 
1. usando VMware se creó una máquina virtual con el iso de centos 7 minimal 1611 siguiendo las siguientes configuraciones
- Disco duro de 20 gb
- Memoria RAM 2 gb
- Interfaz de red en modo bridge

2. para poder iniciar la maquina de forma remota es necesario instalar SSH con el siguiente . 

 ```shell
 # yum install openssh openssh-server openssh-clients openssl-libs
 ```
  Por defecto ssh escucha en el puerto 22 pero se puede modificar en el archivo de configuracion ubicado en **/etc/ssh/sshd_config**

3. Instalar y configurar apache con el siguiente comando
 
```shell
# yum install httpd
```

4. Permitir el paso de apache a través del firewall por el puerto 80 para HTTP y 443 para HTTPS con los siguientes comandos
```shell
# firewall-cmd --permanent --add-port=80/tcp
# firewall-cmd --permanent --add-port=443/tcp
# firewall-cmd --reload
```
5. Reiniciar los servicios de apache y chequear el estado del servicio
```shell
# systemctl start httpd
# systemctl status httpd
```
6. Al realizar todos los pasos anteriores se podrá acceder a través de un cliente (navegador web) por medio de la ip del servidor a la pagina web por defecto. 

7. Modificar la pagina por defecto que tiene apache, para esto se debe poner el codigo html en el directorio **/var/www/html**
