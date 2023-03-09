CANDUMP = candump.c lib.c
CANSEND = cansend.c lib.c
OMACSEND = omacsend.c lib.c 
OMACSEND2 = omacsend2.c lib.c
OMACRECIEVE = omacrecieve.c lib.c
OMAC_FD = omac_fd.c lib.c
OMAC_FD2 = omac_fd_2.c lib.c ./tiny-AES-c/aes.c 
CC =gcc
CFLAG = -Iinclude -DAF_CAN=PF_CAN -DPF_CAN=29 -DSO_RXQ_OVFFSET_BITS=64 -D_GNU_L=40 -DSCM_TIMESTAMPING_OPT_STATS=54 -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE  -Wno-parentheses -O2 -Wall
SEND = send.c lib.c



send:
	$(CC) $(SEND) -o $@ $? $(CFLAG)