git filter-branch --commit-filter '
        if [ "$GIT_COMMITTER_NAME" = "SuperDev314" ];
        then
                GIT_COMMITTER_NAME="elitemonster";
                GIT_AUTHOR_NAME="elitemonster";
                GIT_COMMITTER_EMAIL="luckydolly908@gmail.com";
                GIT_AUTHOR_EMAIL="luckydolly908@gmail.com";
                git commit-tree "$@";
        else
                git commit-tree "$@";
        fi' HEAD