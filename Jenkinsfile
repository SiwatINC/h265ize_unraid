node {
  git url: 'https://github.com/SiwatINC/h265ize_unraid'
  docker.withRegistry("https://ghcr.io/v2") {
      docker.build("siwatinc/h265ize:latest").push()
  }
}
