# InSpec Plugin for Sensu

## Running

```json
{
  "checks": {
    "inspec-profile-app1": {
      "command": "check-inspec.rb --profile https://github.com/mycompany/inspec-profile-app1/archive/master.tar.gz",
      "subscribers": [
        "production"
      ],
      "interval": 300
    }
  }
}
```

More to come.
