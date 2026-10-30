# vProfile: Numbers

Real measurements from my own machine (ThinkPad, Docker Desktop on WSL2).

| What | Number |
|---|---|
| Services | 5 containers (Nginx, Tomcat, MySQL, Memcached, RabbitMQ) |
| Published ports | 1 (port 80, Nginx only) |
| app01 image (Tomcat + .war) | 158 MB content / 484 MB disk |
| web01 image (Nginx + config) | 62.9 MB content / 237 MB disk |
| Tomcat startup | 22.6 s (first run) → 13.2 s → 9.7 s |
| Full stack rebuild from the compose file | `down` → `up -d` → all 5 Up in ~30 s |
| Nginx-only change after adding .dockerignore | 1 container recreated (web01); app01 untouched |
| app01 build after an Nginx-only change | 46.6 s (full rebuild) → 3.4 s (cached, with .dockerignore) |

## Pinned versions

| Image | Tag |
|---|---|
| Maven (build stage) | 3.10.0-eclipse-temurin-8 |
| Tomcat | 9.0.123-jre8-temurin-noble |
| Nginx | 1.28.3 |
| MySQL | 5.7.44 |
| Memcached | 1.6.45 |
| RabbitMQ | 4.4.0 |
