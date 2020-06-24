def fromepoch: . / 1000 | todate;
def fromepoch(epoch): epoch | fromepoch;
def toepoch: . | fromdate * 1000;
def toepoch(d): d | toepoch;
