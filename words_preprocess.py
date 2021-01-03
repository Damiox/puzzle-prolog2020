with open('/usr/share/dict/words') as f:
    for line in f:
        line = line.rstrip('\n').lower()
        print(f"words({line}).")
