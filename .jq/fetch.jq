#def fetch($key; default): $key? // default; 
#def fetch($key): fetch($key; empty);
# $key must be an array-path, as with getpath/1
def fetchpath($key; default):
  getpath($key) as $value
  | if $value != null then $value
    elif ($key|length) == 1
    then if has($key[-1]) then null else default end
    else getpath($key[:-1]) as $x
    | if $x == null then default
      elif $x|has($key[-1]) then null
      else default
      end
   end;
## $key must be an array-path, as with getpath/1
#def fetchpath($key; default):
#  ($key|length) as $len
#  | if $len > 0
#    then $key[0] as $k
#    | if has($k)? // false
#      then . as $in
#      | .[$k] | (if $len == 1 then . else fetchpath($key[1:]; $in | default) end)
#      else default
#      end
#    else default
#    end;
def fetch(key; default):
    fetchpath({} | path(key); default);
def fetchpath(key): 
    fetchpath(key; empty);
def fetch(key): 
    fetch(key; empty);

