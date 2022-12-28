# Just Enough Git to Get Started

_[A video demonstration is here](https://www.youtube.com/watch?v=wHkVhq5R0_8&t=1045s)_

Git is a tool that software engineers use to manage changes to code. In industry
there may be hundreds of programmers changing code every day, and so it is very
important that this go smoothly.

The basic principle is that a repository (a folder of code controlled by Git) is
updated by making commits (a group of changes). These are then pushed (uploaded)
to a remote source control hosting service (we use Github). They can then be
pulled (downloaded) by other programmers.

In this module you will need to:

* Clone a remote repository to your local computer.
* Add a collaborator to your repository.
* Commit your changes.
* Push your commits to the remote repository.
* (Perhaps) Pull new commits from a remote repository.
* (Perhaps) Fork (duplicate) a repository to your Github account.

Below is an example of each one of these.

There is a lot to learn about git. The aim here is to provide the minimum for
you to get going.

## Clone a remote repository to your local computer

[Follow this
guide.](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository)

## Add a collaborator

[Follow this guide.](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-github-user-account/managing-access-to-your-personal-repositories/inviting-collaborators-to-a-personal-repository)

## Commit all of your changes

```shell
# This adds all of your changes to the staging area. The staging area is for
# changes you want to commit. You can look up how to stage individual files.
; git add .

# This commits the staged changes. Use a message that describes what you have
# done — this will be important for your future colleagues!
; git commit -m "Update the privacy policy."
```

## Push your commits to the remote repository

```shell
# This pushes all of your commits from the current branch to the remote.
; git push
```

## Pull new commits from the remote repository

```shell
# This pulls all of your commits from the remote equivalent of your
# current branch.
; git pull
```

## Fork a repository to your Github account

[Follow this
guide](https://docs.github.com/en/get-started/quickstart/fork-a-repo)

## I got a confusing error

Have a go at solving it for 10 minutes. Then ask your cohort or coach. If no one
has any answers and your coach isn't available, work around it by working
locally and bring it up with your coach tomorrow morning.


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=pills%2Fjust_enough_git.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=pills%2Fjust_enough_git.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=pills%2Fjust_enough_git.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=pills%2Fjust_enough_git.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=pills%2Fjust_enough_git.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
