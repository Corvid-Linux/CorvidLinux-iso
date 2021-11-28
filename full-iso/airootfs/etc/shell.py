import os
import getpass
import psutil
import socket
hostname = socket.gethostname()
local_ip = socket.gethostbyname(hostname)

cpuusage = "[CPU:" + str(psutil.cpu_percent()) + "%" + "/" + "MEM:" + str(psutil.virtual_memory().percent) + "%" + "🠮" + socket.gethostname() + "|" + str(local_ip) + "]" + """
"""
username = getpass.getuser()
pwd = os.getcwd()
def loop():
  user = input(str(cpuusage) + str(username) + "[" + str(pwd) + "]")
  os.system(user)
  loop()
loop()  
