# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    sh_default.sh                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/22 14:30:52 by vmoreau           #+#    #+#              #
#    Updated: 2020/01/23 11:23:23 by vmoreau          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash
cd /etc/nginx/sites-available
toto=`cat default | grep autoindex`
tata="		autoindex on;"
if [ "$toto" == "$tata" ]
then
	rm /var/www/html/index*.html
else
{
	rm /var/www/html/index*.html
	cp /init/index.htm /var/www/html/
}
fi
