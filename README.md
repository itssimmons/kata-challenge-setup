# Kata Challenge Setup
This is the alpha version of my own setup to develop, and test katas locally.

## 🤔 How it works?
I've couple experience in various languages but, I'm focusing most of the time in C++, TypeScript and Shell Scripting, so
for the beginning of this repository, you will see only 4 branches:

```
main → Project docs & README (nothing to run here)
cpp  → C++ katas  
       • Build: **Bazel**
       • Test: **GoogleTest**
ts   → TypeScript katas  
       • Run: **Node + tsx**
       • Test: **Mocha + Chai**
sh   → Shell scripts  
       • Run: **Built-in Linux bash**
       • Test: **shunit2**
```

## 🚀 How to run it?

```sh
BRANCH_SETUP=cpp
#            ^ change this for the setup that you want to clone
git clone https://github.com/itssimmons/kata-challenge-setup -b $BRANCH_SETUP
# and follow the steps on your desired setup
```

## 👥 Collaborations
Any kind of collaboration is very welcome! <br/>

<sub>Happy Coding!</sub>
