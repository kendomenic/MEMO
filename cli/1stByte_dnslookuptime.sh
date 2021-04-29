curl -kso /dev/null internal-prod-app-server-elb-1543973490.ap-southeast-1.elb.amazonaws.com -w "==============\n\n 
| dnslookup: %{time_namelookup}\n 
| connect: %{time_connect}\n 
| appconnect: %{time_appconnect}\n 
| pretransfer: %{time_pretransfer}\n 
| starttransfer: %{time_starttransfer}\n 
| total: %{time_total}\n 
| size: %{size_download}\n 
| HTTPCode=%{http_code}\n\n"
