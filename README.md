Register runner

`./run.sh`
`docker exec -it gitlab-runner register`

Debug runner

```
docker run -d \
  --name gitlab-runner \
  --restart always \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $(pwd)/config:/etc/gitlab-runner \
  skilldlabs/gitlab-runner:v1.6.0 \
  --debug run --user=gitlab-runner --working-directory=/home/gitlab-runner
```
