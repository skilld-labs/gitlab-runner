docker run -d \
  --name gitlab-runner \
  --restart always \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $(pwd)/config:/etc/gitlab-runner \
  skilldlabs/gitlab-runner:v1.6.0
