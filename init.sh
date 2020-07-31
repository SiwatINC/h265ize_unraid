echo H265ize Packaged by SiwatS
script --return -c "h265ize --watch -v $extraarg -m '$preset' -d '$output' -q $qp -f '$format' '$input'" /dev/null
echo Process Completed!
