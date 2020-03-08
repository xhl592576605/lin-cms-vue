FROM nginx:latest
# ADD ./dist /var/www/html

# 设置环境变量 url
# ENV dir /soft/web/lin-cms-vue
 
# 读取 url 中的目录，并切换工作空间到对应目录 ${dir} 
WORKDIR  /soft/web/lin-cms-vue

ADD ./nginx/conf.d /etc/nginx/conf.d
EXPOSE 80