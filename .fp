# Navigation
alias fpag="cd ~/code/fashionphile/api-gateway"
alias fpdock="cd ~/code/bizops-docker"
alias fpweb="cd ~/code/fashionphile/web-app"
alias fpcore="cd ~/code/fashionphile/core-api"
alias fpfe="cd ~/code/fashionphile/admin-frontend"
alias fpnm="cd ~/code/fashionphile/nm-portal"
alias fpsty="cd ~/code/fashionphile/stylist"

# JS Build
alias webwatch="nvm use 10.8.0 && iw"
alias adaserve="nvm use 14 && is"

# Staging
alias staging="php artisan staging-hosts:api list"


# Functions
pud() {
  if [ -z "$1" ]
  then
    bash ./jenkins_test.sh vendor/bin/codecept run tests/unit/Fashionphile/Admin --fail-fast
  else
    bash ./jenkins_test.sh vendor/bin/codecept run tests/unit/Fashionphile/$1 --fail-fast
  fi
}


dssh() {
  if [ -z "$1" ]
  then
    echo "Specify box."
  else
    fpdock && ./scripts/ssh-into.sh $1
  fi
}

fpd() {
  if [ -z "$1" ]
  then
    fpdock && echo "Specify command."
  else
    fpdock && ./scripts/docker.sh $1
  fi
}