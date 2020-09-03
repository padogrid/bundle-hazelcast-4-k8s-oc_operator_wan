# Hazelcast Bundle Template

This is a bundle template for creating a new Hazelcast bundle. Follow the steps below when creating a new bundle.

## Build Files

There are two build files: `pom.xml` and `assembly-descriptor.xml`. Both files contain instructions annotated with **@template**. Search **@template** and Add your bundle specifics there.

1. Update `pom.xml` with your bundle specifics. 

2. Update `assembly-descriptor.xml` with your bundle specifics. This file creates a tarball that will be deployed when the user executes the `install_bundle -download` command.

## Build Environment

The best way to develop a bundle is to clone it in the form of a workspace so that you can develop, test, and check in from one place. The following command does just that. It clones the specified bundle in the current RWE and places all the required workspace files in the cloned directory which serves as a workspace.

```bash
# Install bundle as a workspace
install_bundle -download -workspace <bundle-name>

# Switch into the workspace using the bundle name
switch_workspace <bundle-name>
```

Once you are in the workspace, you can make any changes and test the bundle. When you are ready to check in, you can simply commit the changes using the `git commit` command. For new files, you will need to select only the ones that you want to check in using the `git status` and `git diff` commands. For those files that you do not want to check in, you can list them in the `.gitignore` file so that they do not get checked in accidentally. The `.gitignore` file already contains a list of files that are part of workspace which should not be checked in. 

Edit the `.gitignore` and add new exludes or remove existing excludes.

```bash
vi .gitignore
```

Make sure to comment out your workspace directories (components) so that they can be included by `git`.

```console
...
# PadoGrid workspace directories
apps
clusters
docker
k8s
pods
...
```
