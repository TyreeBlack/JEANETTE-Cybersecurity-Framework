require 'artii' # module needed for the purpose of generating ASCII text
require 'readline' # module for command line interpreter 
a = Artii::Base.new :font => 'slant' # renders the title of the program 
puts a.asciify('JEANETTE')

puts "\e[33m Author: Tyree Black\e[0m"
puts "\e[33m Discord: cvnqueror  \e[0m"
puts "\e[33m Version: 1.1 \e[0m"
puts "\e[33m OS Requirement: Windows10 & 11, Linux, & MacOS \e[0m"
puts "\e[33m Github Hosting URL: https://github.com/TyreeBlack/JEANETTE-Cybersecurity-Framework (Updates will be made here)\e[0m"
puts "\e[33m Extras: Run --help to get syntax assistance \e[0m"

puts " ===== MENU ======== "

def return_to_menu
    puts "\e[91m 1.) Identifying Unsecure Ports \e[0m"
    puts "\e[96m 2.) Vulnerability Scanning Module \e[0m"
    puts "\e[95m 3.) Social Engineering Detection \e[0m"
    puts "\e[93m 4.) Configuration Auditing \e[0m" 
    puts "\e[92m 5.) Decomplier for Malicious Code \e[0m"
    puts "\e[90m 6.) Reporting & Exporting \e[0m"
    puts "\e[97m 7.) Exit Application \e[0m"

    print "Enter the corresponding number or command from the menu selection: \n"
    print "run --help for syntax command options \n"

    # setting a custom ommand line prompt 
    prompt = "JEANETTE>"
end

# --- SUBMENU OPTION FOR MAIN MENU 1 --
def port_scanner
    puts "Must have a Python Interpreter downloaded \n"
end


# --- SUBMENU OPTION FOR MAIN MENU 2 --

# --- SUBMENU OPTION FOR MAIN MENU 3 --

# --- SUBMENU OPTION FOR MAIN MENU 4 --

# --- SUBMENU OPTION FOR MAIN MENU 5 --

# --- SUBMENU OPTION FOR MAIN MENU 6 ---
def open_nano
    success = system("nano Untitled.txt") # opens nano text editor
end

def main

    puts "\e[91m 1.) Identifying Unsecure Ports \e[0m"
    puts "\e[96m 2.) Vulnerability Scanning Module \e[0m"
    puts "\e[95m 3.) Social Engineering Detection \e[0m"
    puts "\e[93m 4.) Configuration Auditing \e[0m" 
    puts "\e[92m 5.) Decomplier for Malicious Code \e[0m"
    puts "\e[90m 6.) Reporting & Exporting \e[0m"
    puts "\e[97m 7.) Exit Application \e[0m"

    print "Enter the corresponding number or command from the menu selection: \n"
    print "run --help for syntax command options \n"

    # setting a custom ommand line prompt 
    prompt = "JEANETTE>"

    while buf = Readline.readline(prompt, true)
    case buf.strip
    
    when "--help"

        puts "[-] USAGE:"
        puts "--Launches the application from the terminal\n"
        puts "--Review the avaliable options from the main menu\n"
        puts "--Enter the numeric selection or command from the JEANETTE> prompt\n"
        puts "--Command-line features may be added in future versions\n"

        puts "[-] COMMANDS: "
        puts "run exit to close the application\n"

    when "1"
        puts " [*] 1. Launch Graphical Port Scanner\n"
        puts " [*] 2. "
        puts " [*] 3."
        puts " [-] 4.Return to Main Menu"

        networking_prompt = "JEANETTE_NETWORKING> "
        one = Readline.readline(networking_prompt, true) 
        when "1"
            puts "Launching Port Scanner...\n"
            port_scanner()
        end 

    when "2"
        puts " [*] 1. Run the packet capture analyzer"

    when "3"
        puts" [*] 1. Email Body Analyzer Identifier\n"

    
    when "4"
        puts " [*] 1. "

    when "5"
        puts "[*] 1. "

    when "6"
    
        puts "[*] 1. Launch Nano Text Editor \n"
        puts "[*] 2. Import to JSON \n"
        puts "[*] 3. "
        puts "[*] 5. Return to main menu"

        reporting_prompt = "JEANETTE_REPORTING> "
        six = Readline.readline(reporting_prompt, true)

        case six.strip
        when "1"
            puts "Launching nano..."
            open_nano()

        when "2"
            puts ""

        when "5"
            puts "Returning to main menu..."
            return_to_menu()
        end # closing the in case statement

    when "Exit"
        puts "Exiting Framework\n"
        break
     end    
    end
  end
main()