# Ps5-dualsense
Ps5-Dualsense for linux driver

Basicamente es el driver para usar control de ps5 en linux, en mi caso lo compile para usarlo en la Raspberry 
con RetroPie v4.8 kernel 5.10.103-v7l+

Asegurate de tener instalados los paquetes de desarrollo del kernel, gcc, make  
verifica si esta el archivo hid-sony.ko y renombralo por hid-sony.ko.old  
Path:  
<code>/lib/modules/$(shell uname -r)/kernel/drivers/hid</code>  
Comando:
<pre><code>sudo mv /lib/modules/$(shell uname -r)/kernel/drivers/hid/hid-sony.ko /lib/modules/$(shell uname -r)/kernel/drivers/hid/hid-sony.ko.old</code></pre>

luego ejecuta <pre><code>make</code></pre>  <pre><code>sudo make install</code></pre>
con eso debe quedar instalado el driver hid-playstation.ko en la ruta <code>/lib/modules/$(shell uname -r)/kernel/drivers/hid</code>   
reinicia retropie y desde el menu de retropie en bluetooth (elimina si estan sincronizados) y al sincronizar debe encenderse la luz blanca, 
que indica el player y con eso queda instalado y funcionando el dualshock para los juegos de playstation  
dejare el driver compilado para retropie 4.8 **hid-playstation.ko** en los **Releases**

Saludos y a disfrutar 

Mafiuks
