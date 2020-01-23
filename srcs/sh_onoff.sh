# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    sh_onoff.sh                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/23 11:33:08 by vmoreau           #+#    #+#              #
#    Updated: 2020/01/23 12:15:16 by vmoreau          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

cd /etc/nginx/sites-available
toto=`cat default | grep autoindex`
tata="		autoindex on;"
if [ "$toto" != "$tata" ]
then
{
		rm /var/www/html/index*.htm
		cp /init/defaulton /etc/nginx/sites-available/default
		echo "\033[4;32m ===Autoindex ON=== \033[0m"
}
else
{
		cp /init/index.htm /var/www/html/
		cp /init/defaultoff /etc/nginx/sites-available/default
		echo "\033[4;31m ===Autoindex OFF=== \033[0m"
}
fi
