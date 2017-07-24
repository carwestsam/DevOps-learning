

sample output 


```
○ → aws route53 list-resource-record-sets 
		--hosted-zone-id Z3CR2I8Z9V
	--profile route-changer
```

```
{
    "ResourceRecordSets": [
        {
            "Name": "t3.com.",
            "Type": "NS",
            "TTL": 172800,
            "ResourceRecords": [
                {
                    "Value": "ns-790.awsdns-34.net."
                },
                {
                    "Value": "ns-1060.awsdns-04.org."
                },
                {
                    "Value": "ns-1797.awsdns-32.co.uk."
                },
                {
                    "Value": "ns-24.awsdns-03.com."
                }
            ]
        },
        {
            "Name": "t3.com.",
            "Type": "SOA",
            "TTL": 900,
            "ResourceRecords": [
                {
                    "Value": "ns-790.awsdns-34.net. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
                }
            ]
        }
    ]
}
```

request for creation(create_record.json)


```json

{
  "Comment": "string",
  "Changes": [
    {
      "Action": "CREATE",
      "ResourceRecordSet": {
        "Name": "my.t3.com.",
        "Type": "A",
        "SetIdentifier": "string",
        "Weight": long,
        "Region": "us-east-1",
        "MultiValueAnswer": false,
        "TTL": long,
        "ResourceRecords": [
          {
            "Value": "34.228.169.27"
          }
        ],
      }
    }
  ]
}
```

example of upsert domain


```json
{
  "Comment": "try to upsert route",
  "Changes": [
    {
      "Action": "UPSERT",
      "ResourceRecordSet": {
        "Name": "my.t3.com.",
        "Type": "CNAME",
        "TTL": 30,
        "ResourceRecords": [
          {
            "Value": "https://s3.amazonaws.com/cf-templates-dbe-us-east-1/20163GC-EC2WithEIP.yml"
          }
        ]
      }
    }
  ]
}
```


