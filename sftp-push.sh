sftp -P 2223 quentin@vps-prod <<EOF
put -r ./pages/* bonnet-software/user/pages/02.blog/
EOF

