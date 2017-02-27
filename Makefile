OUT = smartpower
SRC = smartpower.c

$(OUT): $(SRC)
	gcc $< -Wall -O2 -o $@

clean:
	-rm -f $(OUT)

install: $(OUT)
	cp $(OUT) $(DESTDIR)/usr/bin

$(OUT): Makefile
