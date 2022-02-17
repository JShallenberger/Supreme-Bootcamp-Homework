This is the script for deliverable task 4 for homework week 7.

```
$directory = Get-ChildItem .\
foreach ($item in $directory){
  Get-Acl $item
}
```
