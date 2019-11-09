if [ -n "${DEPLOY_GCE+x}" ]; then
   printf "Triggering an %s build on the %s branch\n\n" "$MAIN_PROJECT" "$CIRCLE_BRANCH"
   BUILD_INFO=$(curl -X POST -u "$CIRCLE_TOKEN:" \
   -d {} \
   "https://circleci.com/api/v1.1/project/github/$ORGANIZATION/$MAIN_PROJECT/tree/$CIRCLE_BRANCH")
   printf "\n\nBuild triggered\n\n"
   printf "Follow the progress of the build on \nhttps://circleci.com/gh/%s/%s/tree/%s" "$ORGANIZATION" "$MAIN_PROJECT" "$CIRCLE_BRANCH"
fi
