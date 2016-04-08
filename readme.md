ec2mnt
------
Combine + mount EC2 instance store volumes into a single volume at `/mnt/data`. Handles variations in disk device names across different EC2 instances.

### Run from S3

```
$ curl https://s3.amazonaws.com/mapbox/apps/ec2mnt/v1.0.0 | bash
```

