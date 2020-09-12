#!bin/sh/
clear

cd /home/
mkdir HISTORY_USB
cd HISTORY_USB
sudo apt install figlet toilet
clear
figlet HISTORY USB by:julian

sleep 2

echo "Quieres ejecutar el scrip? Esto creara o sobre escrivira un archivo en tu carpeta de documentos (captura.txt). y/n"
read respuesta1
if test $respuesta1
then
        while [ $respuesta1 = y ]; do
          sleep 2
          echo "Quieres buscar por:"
          echo "1 Dia"
          echo "2 Hora"
          echo "3 Dia y Hora"
          read respuesta2
          if test $respuesta2 = 1
          then
          	sleep 2
          	echo "Digita el Dia (01 al 31)"
          	read Dia
            if test $Dia
          	then
          		while [ $Dia -gt 32 ]; do
          		sleep 1
          	        echo "Error"
          	        sleep 1
          	        echo "El numero digitado no se encuentra en el rango"
          	        echo "Por favor intenta de nuevo"
          		sleep 1
          		echo "Digita numero Dia del 01 al 31: "
          	        read  Dia

          		done

          		echo "Buscando"
          		sleep 2
          		figlet HISTORY USB by echo by:juian >> captura.txt
          		date >> captura.txt

          	        grep -r $Dia. | grep -r usb /var/log/  >> captura.txt


          	        echo "Se a creado el archivo de captura"
                    echo "Abriendo archivo"
                    sleep 2
                    mousepad captura.txt
          		exit
          	fi
          fi
          if test $respuesta2 = 2
          then
          	sleep 2
          	echo "Para digitar la hora usa el ejemplo: (14:15:26) Recuerda siempre usar los dos puntos (:) y el formato de 24 horas (00:00:00 a 23:59:59"
            read Hora
            if test $Hora
            then
                while [ $Hora -gt 24:**:** ]; do
                sleep 1
    	          echo "Error"
                sleep 1
                echo "El numero digitado no se encuentra en el rango"
                echo "Por favor intenta de nuevo"
                sleep 1
                echo "Para digitar la hora usa el ejemplo: (14:15:26) Recuerda siempre usar los dos puntos (:) y el formato de 24 horas (00:00:00 a 23:59:59"
                read Hora
    	          done
    	          echo "Buscando"
                sleep 2
                figlet HISTORY USB by:juian2211 >> captura.txt
            		date >> captura.txt
                echo "kern.log" >> captura.txt
                cat /var/log/kern.log | grep $Hora | grep usb >> captura.txt
                echo "kern.log.1" >> captura.txt
                cat /var/log/kern.log.1 | grep $Hora | frep usb >> captura.txt
                echo "Se a creado el archivo de captura en Documentos"
                mousepad captura.txt
                exit
            fi
            else
            sleep 1
            echo "Error"
            sleep 1
            echo "No digitaste nada :("
            figlet CHAO
            figlet "HASTA UNA PROXIMA OCACION ; )"
            sleep 2
            exit
          fi
          if test $respuesta2 = 3
          then
                  sleep 2
                  echo "Digita el Dia (01 al 31)"
                  read Dia

                  if test $Dia
                  then
          	        while [ $Dia -gt 32 ]; do
                          sleep 1
                          echo "Error"
                          sleep 1
                          echo "El numero digitado no se encuentra en el rango"
                          echo "Por favor intenta de nuevo"
                          sleep 1
                          echo "Dijita numero Dia del 01 al 31: "
                          read  Dia
                          done
                          echo "Buscando"
          	              else

          		            sleep 1
          		            echo "Error"
          		            sleep 1
          	              echo "No digitaste nada :("
    	                    figlet CHAO
                          figlet "HASTA UNA PROXIMA OCACION ; )"
                          sleep 2
          		            exit
                  fi
                  echo "Para digitar la hora usa el ejemplo: (14:15:26) Recuerda siempre usar los dos puntos (:) y el formato de 24 horas (00:00:00 a 23:59:59"
                	read Hora
                	if test $Hora
                	then
                		while [ $Hora -gt 24:**:** ]; do
                		      sleep 1
                          echo "Error"
                          sleep 1
                          echo "El numero digitado no se encuentra en el rango"
                          echo "Por favor intenta de nuevo"
                          sleep 1
                          echo "Para digitar la hora usa el ejemplo: (14:15:26) Recuerda siempre usar los dos puntos (:) y el formato de 24 horas (00:00:00 a 23:59:59"
                          read Hora
                        	done
                      		sleep 2
                          figlet HISTORY USB by echo "by:juian" >> captura.txt
                          "date" >> captura.txt
                          echo "kern.log" >> captura.txt
                          cat /var/log/kern.log | grep $Dia | grep $Hora | grep usb >> captura.txt
                          echo "kern.log.1" >> captura.txt
                          cat /var/log/kern.log.1 | grep $Dia | grep $Hora | grep usb >> captura.txt
                          echo "Se a creado el archivo de captura en Documentos"
                          exit
                          else
                          sleep 1
                          echo "Error"
                          sleep 1
                          echo "No digitaste nada :("
                          figlet CHAO
                          figlet "HASTA UNA PROXIMA OCACION ; )"
                          sleep 2
                          exit
                  fi
          else
          sleep 1
          echo "Error"
          sleep 1
          echo "No digitaste nada :("
          figlet CHAO
          figlet "HASTA UNA PROXIMA OCACION ; )"
          sleep 2
          exit
          fi

done
elif [ $respuesta1 = n ]; then
          figlet ADIOS
          echo "Cerrando operacion"
          sleep 3
          exit

figlet Error
fi
