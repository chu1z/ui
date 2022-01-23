# 清空dist目录中的旧文件
echo '正在清除原有dist文件...'
rm -rf dist/*.css

# 打包出不压缩的CSS文件cc-ui.css
echo '正在生成cc-ui.css文件...'
npx postcss src/cc-ui.css -o dist/cc-ui.css -u postcss-import autoprefixer --no-map 

# 打包出被压缩的CSS文件cc-ui.min.css
echo '正在生成cc-ui.min.css文件...'
npx postcss src/cc-ui.css -o dist/cc-ui.min.css -u postcss-import autoprefixer cssnano --no-map 