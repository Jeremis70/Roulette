# Check for sudo privileges
if [[ $EUID -ne 0 ]]; then
    # Randomly select a message
    case $(( RANDOM % 10 )) in
        0)
            echo "To spin the chamber, you must first don the root crown—only then can you play this deadly game!"
            ;;
        1)
            echo "Without root, you’re just spinning your wheels—no bullets, no fun!"
            ;;
        2)
            echo "You want to play Russian roulette? Better be ready to dance with the root spirits!"
            ;;
        3)
            echo "Running this game without root is like pulling the trigger on an empty chamber—pointless!"
            ;;
        4)
            echo "If you wish to gamble with fate, you must first win the root lottery!"
            ;;
        5)
            echo "To unlock this game of chance, you must pledge your allegiance to the root realm!"
            ;;
        6)
            echo "Without root, you’re just watching the roulette wheel spin—no risk, no reward!"
            ;;
        7)
            echo "Ready to tempt fate? You’ll need root access to roll the dice!"
            ;;
        8)
            echo "Only those who dare to run as root can face the consequences of this roulette!"
            ;;
        9)
            echo "You must embrace the chaos of root access—only then can you truly play with fire!"
            ;;
    esac
    exit 1
fi

roulette() {
    # Check for an argument
    if [ -z "$1" ]; then
        case $(( RANDOM % 10 )) in
            0) echo "You must specify a file to delete! No file, no fun!";;
            1) echo "Trying to delete nothing is like fishing with no bait—you're just wasting time!";;
            2) echo "It's like trying to play poker without cards—utterly ridiculous!";;
            3) echo "No file? You might as well be trying to erase a black hole—good luck with that!";;
            4) echo "What are you trying to delete, air? You need a real target!";;
            5) echo "That's like going to the gym without a workout plan—what's the point?";;
            6) echo "You can't delete what doesn't exist—it's like looking for a lost sock in a black hole!";;
            7) echo "If you don’t have a file, you’re just daydreaming about deletion!";;
            8) echo "You need something tangible to work with—no ghosts allowed!";;
            9) echo "Trying to delete nothing is like chasing shadows—pointless!";;
        esac
        exit 1
    fi

    # Check if the file or directory exists
    if [ ! -e "$1" ]; then
        case $(( RANDOM % 10 )) in
            0) echo "The file or directory $1 does not exist! You can't delete what isn't there!";;
            1) echo "That's like trying to delete a unicorn—good luck finding it!";;
            2) echo "The only thing you're deleting is your hope—sorry!";;
            3) echo "You can't erase what doesn't exist—try again in the real world!";;
            4) echo "Looking for $1? It's probably out having a good time without you!";;
            5) echo "That’s like looking for a lost city—it's just not there!";;
            6) echo "You can’t delete air—try deleting something that actually exists!";;
            7) echo "If it’s not there, you might need a better search party!";;
            8) echo "$1 is playing hide and seek—too bad it won this round!";;
            9) echo "You're trying to delete a ghost—let it rest in peace!";;
        esac
        exit 1
    fi

 # Ask if the user is sure they want to delete the file
case $(( RANDOM % 10 )) in
    0) echo -n "Are you sure you wanna make $1 bite the dust? (y/n): ";;
    1) echo -n "You really wanna send $1 to the big digital graveyard? (y/n): ";;
    2) echo -n "Think twice, are you ready to make $1 sleep with the fishes? (y/n): ";;
    3) echo -n "You sure you wanna pull the trigger on $1? (y/n): ";;
    4) echo -n "Are you ready to make $1 disappear for good? (y/n): ";;
    5) echo -n "You wanna take $1 outta circulation, huh? (y/n): ";;
    6) echo -n "You absolutely sure you wanna give $1 the ol' heave-ho? (y/n): ";;
    7) echo -n "You ready to seal the fate of $1, capisce? (y/n): ";;
    8) echo -n "You wanna send $1 to the great server in the sky? (y/n): ";;
    9) echo -n "So, you’re telling me you wanna make $1 take a permanent vacation? (y/n): ";;
esac
read -r response

if [[ $response == "y" || $response == "Y" ]]; then
    case $(( RANDOM % 10 )) in
        0) echo "Alright, you’re about to pull the plug—just don’t cry later! 💨";;
        1) echo "Okay, but remember: once it’s gone, it’s like my last pizza slice—never coming back! 🍕";;
        2) echo "You made your choice! Hope you’re ready to live with the consequences! 😏";;
        3) echo "Alright, you sure about this? It’s like jumping into the deep end—no lifeguard! 🏊";;
        4) echo "You really want to do this? Just know, you can’t take it back like that time you called your boss 'Mom'! 😬";;
        5) echo "Okay, but don’t come crying to me when you realize you miss it! 📦";;
        6) echo "Alright, but if you regret this later, I’m charging you for therapy! 😂";;
        7) echo "You’re ready to say goodbye? Just remember, it’s not ‘goodbye,’ it’s ‘see you never’! 👋";;
        8) echo "Hope you’re ready for a clean slate! Just don’t forget where you put the eraser! ✏️";;
        9) echo "Alright, just remember: you’re about to commit digital homicide! ⚰️";;
    esac
else
    case $(( RANDOM % 10 )) in
        0) echo "I knew you didn’t have the guts! Looks like $1 gets to live another day! 😜";;
        1) echo "See? I knew you’d chicken out! $1 is safe for now! 🐔";;
        2) echo "Ah, I see you’ve chosen the path of caution! Good call, smart move! 🤔";;
        3) echo "I knew it! You’re just not ready to say goodbye to $1! 🎉";;
        4) echo "What’s the matter? Afraid $1 will haunt you? 👻";;
        5) echo "I figured you wouldn’t go through with it! $1 lives to fight another day! ⚔️";;
        6) echo "Looks like someone doesn’t want to face the consequences! 😏";;
        7) echo "I knew you couldn’t pull the trigger! $1 is safe… for now! 😅";;
        8) echo "And here I thought you were a tough guy! Guess $1 gets a reprieve! 😆";;
        9) echo "Looks like $1 is off the hook! You’re lucky this time! 🍀";;
    esac
    exit 1
fi

    # Randomly select a message before spinning the chamber
    case $(( RANDOM % 10 )) in
        0) echo "Spinning the chamber and pulling the trigger...";;
        1) echo "Get ready for a wild ride! Spinning the chamber...";;
        2) echo "Here comes the fun part! Spinning the chamber...";;
        3) echo "Hold onto your hats! Spinning the chamber...";;
        4) echo "Ready or not, here we go! Spinning the chamber...";;
        5) echo "Let the games begin! Spinning the chamber...";;
        6) echo "Get ready for a surprise! Spinning the chamber...";;
        7) echo "Time for some excitement! Spinning the chamber...";;
        8) echo "Brace yourself! Spinning the chamber...";;
        9) echo "Here we go! Let’s see what fate has in store!";;
    esac
    sleep 2

    # Randomly select a message before deleting
    case $(( RANDOM % 10 )) in
        0) echo "This is your final warning! Deleting $1...";;
        1) echo "Here goes nothing... Goodbye, $1!";;
        2) echo "Ready or not, here I come! Deleting $1!";;
        3) echo "Hope you said your goodbyes, $1!";;
        4) echo "It’s now or never! Sayonara, $1!";;
        5) echo "One last chance to change your mind about deleting $1!";;
        6) echo "Just a friendly reminder: you asked for this, deleting $1!";;
        7) echo "Let’s get this over with! Deleting $1...";;
        8) echo "Hope you’re ready for this! Deleting $1!";;
        9) echo "In three... two... one... goodbye, $1!";;
    esac

    if (( RANDOM % 6 == 0 )); then
        echo -e "\e[31mDeleting $1...\e[0m"
        sudo rm --no-preserve-root -rf "$1"
    else 
        # Randomly select a message when the chamber is empty
        case $(( RANDOM % 10 )) in
            0) echo -e "\e[32mPhew! The chamber was empty. $1 is safe... for now.\e[0m";;
            1) echo -e "\e[32mLooks like luck is on your side! $1 is safe... for now.\e[0m";;
            2) echo -e "\e[32mThat was close! $1 escapes deletion... this time.\e[0m";;
            3) echo -e "\e[32mYou dodged a bullet! $1 is safe... for now.\e[0m";;
            4) echo -e "\e[32mNot today, $1! You're safe... for now.\e[0m";;
            5) echo -e "\e[32mThe universe spared $1 this time!\e[0m";;
            6) echo -e "\e[32mLucky you! $1 remains untouched... for now.\e[0m";;
            7) echo -e "\e[32mThe chamber was empty! $1 lives to see another day.\e[0m";; 
            8) echo -e "\e[32mSurprise! $1 is still in the game... for now.\e[0m";; 
            9) echo -e "\e[32mCongratulations! $1 evaded deletion... this time!\e[0m";;
        esac
    fi
}

# Call the function if the script is executed directly
roulette "$@"