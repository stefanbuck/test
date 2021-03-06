curl \
  -X DELETE \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/stefanbuck/test

curl \
   --output /dev/null --silent \
  -X POST \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.baptiste-preview+json" \
  https://api.github.com/repos/stefanbuck/cookiecutter-template/generate \
  -d "{\"private\":true, \"name\":\"test\", \"owner\": \"stefanbuck\"}"

# curl -X GET -H "Authorization: token $GITHUB_TOKEN" -H "Accept: application/vnd.github.baptiste-preview+json" https://api.github.com/repos/stefanbuck/test/commits/HEAD