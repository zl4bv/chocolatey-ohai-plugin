stage "Checkout"

node {
    checkout scm
}

stage "Style checks"

parallel(Rubocop: {
    node {
        chef_exec "rubocop"
    }
}, Foodcritic: {
    node {
        chef_exec "foodcritic ."
    }
})

stage "Unit tests"

node {
    chef_exec 'rspec'
}

stage "Integration tests"

node {
    chef_exec "kitchen test"
}

def chef_exec(command) {
    sh "chef exec ${command}"
}
