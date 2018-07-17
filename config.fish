set -x -g EDITOR vim

alias ls='ls --color=auto'
set PS1 '[\u@\h \W]\$ '

# #Sleeping_IoT stuff exports
# set -x -g PATH /opt/esp-open-sdk/xtensa-lx106-elf/bin $PATH
# set -x -g SDK_PATH /home/valex/workspace/sleeping_iot/lib/ESP8266_RTOS_SDK
# set -x -g BIN_PATH /home/valex/workspace/sleeping_iot/bin
# set -x -g ESP_FLASH_SIZE 32m
# set -x -g GTAGSLABEL pygments
# set -x -g ESHELL /bin/bash

# # Torch
# set -x -g LUA_PATH '/home/valex/.luarocks/share/lua/5.1/?.lua;/home/valex/.luarocks/share/lua/5.1/?/init.lua;/home/valex/torch/install/share/lua/5.1/?.lua;/home/valex/torch/install/share/lua/5.1/?/init.lua;./?.lua;/home/valex/torch/install/share/luajit-2.1.0-beta1/?.lua;/usr/local/share/lua/5.1/?.lua;/usr/local/share/lua/5.1/?/init.lua'
# set -x -g LUA_CPATH '/home/valex/.luarocks/lib/lua/5.1/?.so;/home/valex/torch/install/lib/lua/5.1/?.so;./?.so;/usr/local/lib/lua/5.1/?.so;/usr/local/lib/lua/5.1/loadall.so'
# set -x -g PATH /home/valex/torch/install/bin $PATH
# set -x -g LD_LIBRARY_PATH /home/valex/torch/install/lib $LD_LIBRARY_PATH
# set -x -g DYLD_LIBRARY_PATH /home/valex/torch/install/lib$DYLD_LIBRARY_PATH
# set -x -g LUA_CPATH '/home/valex/torch/install/lib/?.so;'$LUA_CPATH

# Tesseract
set -x -g PATH /home/valex/workspace/temp/tesseract/tessdata $PATH
set -x -g FC_PIPELINE_AVAILABLE 0


if status --is-login
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec startx -- -keeptty
  end
end

#if test -f ~/.Xmodmap 
#  xmodmap ~/.Xmodmap
#end

fish_default_key_bindings

#---------aliases------------------

function ggrc_docker_start
         docker start ggrccore_db_1
         docker start ggrccore_cleandev_1
         docker exec -it ggrccore_cleandev_1 su
end


function rgrep #key format
         grep -n $argv[1] (find ./ | grep $argv[2])
end

function docker_stop_all
	docker stop (docker ps -aq)
end

# source (conda info --root)/etc/fish/conf.d/conda.fish