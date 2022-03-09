BEGIN{
 intv="+49";
}
function makeNr(num,anz,einzeln){
  if (einzeln==1)
    printf substr(num,1,1) " ";
  len=length(num);
  for(i=1+einzeln;i<=len;i=i+anz)
    printf substr(num,i,anz) " ";
}
{
printf $1 $2 " OR ";
printf $1 " " $2 " OR ";
printf "(" $1 ") " $2 " OR ";
printf $1 "/" $2 " OR ";
inttel=$1;
sub(/0/,intv,inttel);
print inttel $2
print makeNr($1,2,0) " " makeNr($2,2,1);
#and so on
}

