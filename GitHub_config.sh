git config --global user.email "you@example.com"
git config --global user.name "Your Name"

# SSH認証キーの作成
ssh-keygen -t rsa

# ~/.ssh/configに接続設定を追加
cat ssh_config.txt >> ~/.ssh/config

# 生成した秘密鍵に読み取り専用属性を与える  
cd ~/.ssh
chmod 600 id_rsa

# ssh-agentに秘密鍵を登録
ssh-add ~/.ssh/id_rsa

# 登録されたか確認
ssh-add -l

# 公開鍵をコピー
pbcopy < ~/.ssh/id_rsa.pub

# GitHubで設定
echo "GitHubで設定する"