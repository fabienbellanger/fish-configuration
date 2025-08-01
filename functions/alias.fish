function rmi
    rm -i
end

function ll
    eza -l --git --octal-permissions --group-directories-first --header --group $argv
end

# --- Serveurs ---
function sshonet7 --description 'SSH ONET 7 (dev)'
    ssh dev@51.15.160.20 -i ~/.ssh/id_ed25519
end

function sshonet7m --description 'SSH ONET 7 (mep)'
    ssh mep@51.15.160.20 -i ~/.ssh/id_ed25519
end

function sshonet7f --description 'SSH ONET 7 (fabien)'
    ssh fabien@51.15.160.20 -i ~/.ssh/id_ed25519
end

function sshonet8 --description 'SSH ONET 8 (dev)'
    ssh dev@195.154.26.127 -i ~/.ssh/id_ed25519
end

function sshonet9 --description 'SSH ONET 9 (dev)'
    ssh dev@163.172.78.124 -i ~/.ssh/id_ed25519
end

function sshonet10 --description 'SSH ONET 10 (dev)'
    ssh dev@51.159.20.157 -i ~/.ssh/id_ed25519
end

function sshonet13 --description 'SSH ONET 13 (dev)'
    ssh dev@51.159.17.35 -i ~/.ssh/id_ed25519
end

function sshonet14 --description 'SSH ONET 14 (dev)'
    ssh dev@195.154.79.104 -i ~/.ssh/id_ed25519
end

function sshonet21 --description 'SSH ONET 21 (dev)'
    ssh dev@195.154.204.64 -i ~/.ssh/id_ed25519
end

function sshonet22 --description 'SSH ONET 22 (dev)'
    ssh dev@195.154.204.80 -i ~/.ssh/id_ed25519
end

function sshonet23 --description 'SSH ONET 23 (dev)'
    ssh dev@51.159.7.213 -i ~/.ssh/id_ed25519
end

# --- Git ---
function gitfs
    git flow feature start $argv
end

function gitff
    git flow feature finish $argv
end

function gitrs
    git flow release start $argv
end

function gitrf
    git flow release finish $argv
end

function gitca
    git commit --amend $argv
end

function gitp
    git pull $argv
end

function gitfa
    git fetch --all $argv
end

function gitmaster2
    git push origin master-v2 --tags
    git push origin develop-v2
end

function gitmaster
    git push origin master --tags
    git push origin develop
end

function gitmain
    git push origin main --tags
    git push origin develop
end

# --- Docker ---
function dockercup
    docker compose up -d $argv
end

function dockerRmAll
    docker container rm -f (docker ps -a -q)
end

function dockerRmiAll
    docker rmi -f (docker images -q)
end

# --- Docker PHP Exec ---
function php56
    docker exec -it apitic_php5.6 bash
end

function php71
    docker exec -it apitic_php7.1 bash
end

function php72
    docker exec -it apitic_php7.2 bash
end

function php74
    docker exec -it apitic_php7.4 bash
end

function mariadb
    docker exec -it apitic_mariadb bash
end
