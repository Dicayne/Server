# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    sh_unzip.sh                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/16 15:08:26 by vmoreau           #+#    #+#              #
#    Updated: 2020/01/23 14:17:11 by vmoreau          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

echo =========="\033[1;34m Unzip Package \033[0m"=========
cd var/www/html/
tar -xf phpmyadmin.tar
cp phpmyadmin/config.sample.inc.php phpmyadmin/config.inc.php
tar -xzf latest.tar.gz
rm -rf latest.tar.gz phpmyadmin.tar
bash /init/sh_default.sh
chown -R www-data:www-data /var/www/html
echo ["\033[32m ok \033[0m"] Package unziped.
