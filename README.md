# Faktory [![Build Status Image](https://travis-ci.org/nanobox-io/nanobox-docker-faktory.svg)](https://travis-ci.org/nanobox-io/nanobox-docker-faktory)

This is an Faktory Docker image used to launch a Faktory service on Nanobox. To use this image, add a data component to your `boxfile.yml` with the `nanobox/faktory` image specified:

```yaml
data.faktory:
  image: nanobox/faktory
```

## Faktory Configuration Options
Faktory components are configured in your `boxfile.yml`. All available configuration options are outlined below.

###### Quick Links

#### Overview of Faktory boxfile.yml Settings
```yaml
data.redis:
  image: nanobox/redis
  config:
```

### Version
When configuring a Faktory service in your Boxfile, can specify which version of Faktory to use. The following version(s) are available:

- 0.7.0

**Note:** Due to version compatibility constraints, Faktory versions cannot be changed after the service is created. To use a different version, you'll have to create a new Faktory service.

#### version
```yaml
# default setting
data.faktory:
  image: nanobox/faktory:0.7.0
```

## Help & Support
This is a Faktory Docker image provided by [Nanobox](http://nanobox.io). If you are running into an issue with the image, feel free to [create a new issue on this project](https://github.com/nanobox-io/nanobox-docker-faktory/issues/new).

## License
Mozilla Public License, version 2.0
