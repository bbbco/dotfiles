# Emit a stream consisting of pairs of items taken from `stream`
# https://stackoverflow.com/a/48792655/1052013
def pairwise(stream):
  foreach stream as $i ([]; 
      if length == 1 then . + [$i] else [$i] end;
      select(length == 2));
