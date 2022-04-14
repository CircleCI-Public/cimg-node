echo "Checking Versioning"

source ./ALIASES
currentLTS=${lts}
currentVersion=${current}

git restore ALIASES --source=main
prevLTS=$(grep 'lts' ALIASES | cut -d "=" -f2)
prevVersion=$(grep 'current' ALIASES | cut -d "=" -f2)

if [[ $prevVersion != $currentVersion ]]; then
    if [ "$(printf '%s\n' "$currentVersion" "$prevVersion" | sort -V | head -n1)" = "$currentVersion" ]; then
        echo "Please use an updated current version"
        exit 1
    else
        grep -v "current" ./ALIASES > ./TEMP && mv ./TEMP ./ALIASES
        echo "current=${currentVersion}" >> ALIASES
        echo "Current version check passed"
    fi
fi

if [[ $prevLTS != $currentLTS ]]; then
    if [ "$(printf '%s\n' "$currentLTS" "$prevLTS" | sort -V | head -n1)" = "$currentLTS" ]; then
        echo "Please use an updated LTS version" 
        exit 1
    else
        grep -v "lts" ./ALIASES > ./TEMP && mv ./TEMP ./ALIASES
        echo "lts=${currentLTS}" >> ALIASES
        echo "LTS version check passed"
    fi
fi

echo "LTS and Current version checks completed"