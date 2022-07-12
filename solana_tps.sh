while true; do
  TIME=$(date +%H:%M:%S)
  TPS=$(curl -s https://api.solanart.io/get_solana_tps/ | jq '.tps')
  # some calculations which take a few hundred milliseconds
  printf '%s%s%s%s\r' "time - "$TIME " TPS - "$TPS 
  
  sleep 1
done

