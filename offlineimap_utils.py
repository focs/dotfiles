
import keyring

def get_password(server, account):
    password = keyring.get_password(server, account)
    return password

