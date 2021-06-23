
from github import Github
import os
import argparse


def get_argument():
    """In this function we listen for any arguments that the user entered

    Returns:
        [string]: The name of the new repository
    """
    # We create an object of argparse
    parser = argparse.ArgumentParser()
    # We can now store values in repo and provide help for the user if needed
    parser.add_argument("-r", "--repo", dest="repo",
                        help="the name of the new repositorie")

    # We capture the arguments
    args = parser.parse_args()

    return args


def create_repo(new_repo):
    """ With this function we can access the Github API and after log in using the token we can interact and create
        a new repo using the folder name provided by the user

    Args:
        new_repo (string): Using the Github API and the token of the user, we create a new repository
    """
    # Using the tokens for accesing the Github API
    token = os.environ.get('GITOKEN')
    g = Github(token)
    # We now log in to my account
    user = g.get_user()
    login = user.login
    # Using the name of the repo, we now create a new repository
    repo = user.create_repo(new_repo)
    print("Successfully created repository {}".format(new_repo))


if __name__ == "__main__":
    args = get_argument()
    create_repo(args.repo)
