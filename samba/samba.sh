#!/bin/bash
useradd username
(echo password; echo password) | smbpasswd -a -s username
