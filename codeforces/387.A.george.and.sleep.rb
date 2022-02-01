sh, sm = readline.strip.split(/:/).map(&:to_i)
th, tm = readline.strip.split(/:/).map(&:to_i)

dh = sh - th
dm = sm - tm

if dm < 0
  dm += 60
  dh -= 1
end
dh += 24 if dh < 0

printf("%02d:%02d\n", dh, dm)

