chains=("eos" "telos" "wax")
for i in "${chains[@]}"
do
  echo $i
  cleos -u https://$i.greymass.com push action producerjson set '{"owner": "teamgreymass", "json": "'`printf %q $(cat bp/$i.json | tr -d "\r")`'"}' -p teamgreymass@producerjson
done
