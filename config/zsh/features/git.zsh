# Create and initalize a Git repository and add a README.md file
giac() {
    git init
    touch README.md
    git add README.md
    git commit -m "Inital Commit"
}

# Add a README.md file, commit and push to origin
gacp() {
    touch README.md
    git add README.md
    git commit -m "Inital Commit"
    git push    
}
