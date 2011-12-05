username=$1

scp ~/.ssh/id_rsa.pub $username:/tmp/;
ssh $username 'cat /tmp/id_rsa.pub >> ~/.ssh/authorized_keys';
echo "successfully send your key to remote server";
echo "your login can be without password";
ssh $username 'ls';
