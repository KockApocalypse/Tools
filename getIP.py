import socket
import pyperclip

IP = socket.gethostbyname(socket.gethostname())
pyperclip.copy(IP)