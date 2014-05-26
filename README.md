docker-nexus-oss
====================

Docker image of Sonatype Nexus OSS

    OS Base : Ubuntu 14.04
    Exposed Ports : 8081 2812 22
    Nexus Home : /opt/nexus
    Nexus Workdir : /opt/sonatype-nexus (Exported Volume)
    Timezone : Europe/London

Environment Variables
---------------------
    TZ
        Container Timezone. Default 'Europe/London'

Services
--------

  * Sonatype Nexus OSS
  * Monit

Monit is used to control the start up and management of Nexus. You can access the monit webserver
by exposing port 2812 on the Docker host. The user name is `monit` and password can be found by running:

    docker logs <CONTAINER_ID> 2>/dev/null | grep MONIT_PASSWORD

