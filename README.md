# Script para facilitar a conexão de conta GitHub.

Salve o arquivo:

```
curl -o git.sh https://raw.githubusercontent.com/joaqmiu/ezgit/main/git.sh
```
Inicie o script:

```
bash git.sh
```

Copie a key, vá para: 
https://github.com/settings/keys
E adicione sua key SSH.

Após isso, teste sua conexão com:
```
ssh -T git@github.com
```
Resposta esperada:

```
$ ssh -T git@github.com
Hi joaqmiu! You've successfully authenticated, but GitHub does not provide shell access.
```
