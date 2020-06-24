def unique_count: group_by(.) | map([. | length, .[0]]);
def unique_count($i): group_by($i) | map([. | length, .[0]]);
