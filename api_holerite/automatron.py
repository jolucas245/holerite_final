import os
with open("cpf.txt", "r") as arquivo:
  for valor in arquivo:
    os.system("python3 cpf.py {}".format(valor))
    print("{} foi criado".format(valor))
