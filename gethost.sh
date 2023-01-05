inventory='https://t.co/J7bGf2JNBZ'

for target in $(curl -s $inventory/targets.json | jq -r '.targets[] | .name'); do

curl -s $inventory/$target/hostnames.txt | tee -a hostnames.txt

done
