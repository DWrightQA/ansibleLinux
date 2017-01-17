curl -v -u "admin:Echo123/==" -X POST -H 'Content-Type: application/json' -d '
{
"type": "page",
"title": "This Is A Test Page 3",
"space": {
"key": "TE"
},
"ancestors":[{"id":65573}],
"body": {
"storage": {
"value": "<p> Operating System = {{ ansible_lsb.description }} </p>",
"representation": "storage"
}
}
}' "http://192.168.220.101:8090/rest/api/content/" | python -m json.tool
