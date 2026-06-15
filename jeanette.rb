require 'artii' # module needed for the purpose of generating ASCII text
require 'os'
require 'readline' # module for command line interpreter 
require 'launchy' # module for auto launching browsers 


if OS.windows? || OS.linux? || OS.mac? then
    puts "OS is supported :)\n"
else 
    abort("Unsupported OS\n")
end

a = Artii::Base.new :font => 'slant' # renders the title of the program 
puts a.asciify('JEANETTE')

puts "\e[33m Author: Tyree Black\e[0m"
puts "\e[33m Discord: cvnqueror  \e[0m"
puts "\e[33m Version: 1.1 \e[0m"
puts "\e[33m OS Requirement: Windows10 & 11, Linux, & MacOS \e[0m"
puts "\e[33m Github Hosting URL: https://github.com/TyreeBlack/JEANETTE-Cybersecurity-Framework (Updates will be made here)\e[0m"
puts "\e[33m Extras: Run --help to get syntax assistance \e[0m"

puts " ======== MENU ======== "
puts ""

def return_to_menu
    
    puts ""
    puts "\e[91m 1.) Network Discovery Module \e[0m"
    puts "\e[96m 2.) Vulnerability Scanning Module \e[0m"
    puts "\e[1;35m 3.) Social Engineering Detection \e[0m"
    puts "\e[93m 4.) Configuration Auditing \e[0m" 
    puts "\e[38;2;255;165 5.) Decomplier for Malicious Code \e[0m"
    puts "\e[38;5;206m 6.) Digital Foresnics \e[0m"
    puts "\e[30m 7.) Reporting & Exporting \e[0m"
    puts "\e[92m 8.) Mobile Security \e[0m"
    puts "\e[97m 9.) Exit Application \e[0m"
    puts ""
    print "Enter the corresponding number or command from the menu selection: \n"
    print "run --help for syntax command options & for the additional tools (you can also run h or HELP)\n"

    # setting a custom command line prompt 
    prompt = "JEANETTE>"
end

# --- SUBMENU OPTION FOR MAIN MENU 1 --
def port_scanner
   
end


# --- SUBMENU OPTION FOR MAIN MENU 2 --

def virus_total
    Launchy.open("https://www.virustotal.com/gui/")
end

def nessus
    success = system("/bin/systemctl start nessusd.service")
end



# --- SUBMENU OPTION FOR MAIN MENU 3 --

def email_analyzer 

end

# --- SUBMENU OPTION FOR MAIN MENU 4 --

def view_NIST
    Launchy.open("https://www.nist.gov/")

end
# --- SUBMENU OPTION FOR MAIN MENU 5 --

# --- SUBMENU OPTION FOR MAIN MENU 6 ---
def open_nano
    success = system("nano Untitled.txt") # opens nano text editor
end


# --- SUBMENU OPTION FOR MAIN MENU 7 ---

# --- SUBMENU OPTION FOR MAIN MENU 8 ---

def main

    puts "\e[91m 1.) Network Discovery Module \e[0m"
    puts "\e[96m 2.) Vulnerability Scanning Module \e[0m"
    puts "\e[1;35m 3.) Social Engineering Detection \e[0m"
    puts "\e[93m 4.) Configuration Auditing \e[0m" 
    puts "\e[38;2;255;165;0m 5.) Decomplier for Malicious Code \e[0m"
    puts "\e[38;5;206m 6.) Digital Foresnics \e[0m"
    puts "\e[30m 7.) Reporting & Exporting \e[0m"
    puts "\e[92m 8.) Mobile Security \e[0m"
    puts "\e[97m 9.) Exit Application \e[0m"
    puts ""
    print "Enter the corresponding number or command from the menu selection: \n"
    print "run --help for syntax command options & for the additional tools (you can also run h or HELP)\n"

    # setting a custom command line prompt 
    prompt = "JEANETTE> "
    puts ""

    while buf = Readline.readline(prompt, true)
    case buf.strip
    
    when "--help", "h", "HELP"

        puts "[-] USAGE:"
        puts " -- Launches the application from the terminal.\n"
        puts " -- Review the avaliable options from the main menu\.n"
        puts " -- Enter the numeric selection or command from the JEANETTE> prompt.\n"
        puts " -- Command-line features may be added in future versions.\n"
        puts ""
        puts ""

        puts "[-] COMMANDS: "
        puts " -- Run --exit, e, or EXIT to close the application.\n"
        puts ""
        puts ""

        puts " [-] VIRUS TOTAL: "
        puts " -- If launching Virus Total doesnt work as intended you may need to run sudo gem install launchy.\n"
        puts ""
        puts ""

        puts " [-] NESSUS:"
        puts " -- Make sure nessus is actually installed on your OS if you are you using Linux, run this command to install base on your version sudo dpkg -i Nessus-<version number>-debian6_amd64.deb\n"
        puts " -- This program will automatically launch nessus, however you must proceed to your hostname link for the service. For ex. https://NESSUS_HOSTNAME_OR_IP:8834/"
        puts ""
        puts ""

        puts " [-] PORT SCANNER: "
        puts " -- To run the port scanner from the menu 2 option selection, you must have the port_scanner.py downloaded on your desktop.\n"
        puts " -- You must also make the script an executable, run this: chmod +x port_scanner.py from the terminal.\n"
        puts " -- Make sure you are using root priviledges or running your cmd line as administrator.\n"
        puts ""
        puts ""
    

    when "1" # Sub-Menu selection for Network Discovery Module
        puts " [*] 1.) Launch Graphical Port Scanner\n"
        puts " [*] 2.) Wireless Network Enviornment Overview\n"
        puts " [*] 3.) Enumerating Host Devices\n"
        puts " [*] 4.) Wireless Environment Overview\n"
        puts " [*] 5.) Generates Discovery Report\n"
        puts " [-] 6.) Return to the Main Menu\n"
        puts ""

        networking_prompt = "JEANETTE_NETWORKING> "
        one = Readline.readline(networking_prompt, true) 

        case one.strip
        when "1"
            puts "Launching Port Scanner...\n"
            port_scanner()
        
        when "2"

        when "3"

        when "4"

        when "5"
        
        when "6"
            return_to_menu()
        end

    when "2" # Sub-Menu selection for Vulnerability Scanning
        puts " [*] 1.) Auto Launches Virus Total Browser\n"
        puts " [*] 2.) Launch Nessus Application\n"
        puts " [*] 3.) Local Services & Port Enumeration\n"
        puts " [*] 4.) CVE Lookups & Correlation\n"
        puts " [*] 5.) Generate Vulnerability Report\n"
        puts " [-] 6.) Return to the Main Menu\n"
        puts ""

        vulnerability_prompt = "JEANETTE_VULNERABILITY> "
        two = Readline.readline(vulnerability_prompt, true)

        case two.strip
        when "1"
            virus_total()
            puts "Launching Virus Total...\n"
        
        when "2"
            nessus()
            puts "Launching Nessus Scanner...\n"
   
        when "3"   
            
        when "4"

        when "5"
        
        when "6"
            return_to_menu()
        end


    when "3" # Sub-Menu selection for Social Engineering Detection
        puts " [*] 1.) Email Body Analyzer Identifier\n"
        puts " [*] 2.) Finding Email Archives\n"
        puts " [*] 3.) Credentials Exposure\n"
        puts " [*] 4.) URL Reputation Integrity Check\n"
        puts " [-] 5.) Return to the Main Menu\n"
        puts ""

    social_engineering_prompt = "JEANETTE_SOCIALENGINEERING> "
    three = Readline.readline(social_engineering_prompt, true)

    case three.strip
    when "1"

    when "2"

    when "3"

    when "4"
    
    when "5"
        return_to_menu()
    end


    when "4" # Sub-Menu selection for Configuration Auditing
        puts " [*] 1.) Privilege Escalation\n"
        puts " [*] 2.) Monitoring User's Accounts \n"
        puts " [*] 3.) Monitoring Last Login Times\n"
        puts " [*] 4.) Encryption of Valuable Data\n"
        puts " [*] 5.) View NIST Standards\n"
        puts " [-] 6.) Return to the Main Menu\n"
        puts ""
        puts ""

        auditing_prompt = "JEANETTE_AUDITING >"
        four = Readline.readline(auditing_prompt, true)

        case four.strip
        when "1"
        
        when "2"
        
        when "3"
        
        when "4"

        when "5"
            view_NIST()
            puts "Auto-Launching NIST Standards...\n"

        when "6"
            return_to_menu()
        end

    when "5"
        puts " [*] 1.) Launches ghdira compiler\n"
        puts " [*] 2.) Visualization of Stack Trace\n"
        puts " [*] 3.) Memory Dump\n"
        puts " [*] 4.) Hex Editor\n"
        puts " [*] 5.) Return to the Main Menu\n"
        puts ""

        decompile_prompt = "JEANETTE_DECOMPILE> "
        five = Readline.readline(decompile_prompt, true)

        case five.strip
        when "1"
        
        when "2"
        
        when "3"
        
        when "4"
        
        when "5"
            return_to_menu()
        end
    
    when "6"
        puts " [*] 1.) Initiate Forensics Case\n"
        puts " [*] 2.) Review Security Incidents\n"
        puts " [*] 3.) Auto-Launch Autopsy\n"
        puts " [*] 4.) Collection of System Snapshot\n"
        puts " [*] 5.) File-System Forsenics\n"
        puts " [*] 6.) Return to the Main Menu\n"
        puts ""

        foresnics_prompt = "JEANETTE_FORESNICS> "
        six = Readline.readline(foresnics_prompt, true)

        case six.strip
        when "1"
        
        when "2"

        when "3"
        
        when "4"
        
        when "5"

        when "6"
            return_to_menu()
        end

    when "7"
    
        puts " [*] 1.) Launch Nano Text Editor\n"
        puts " [*] 2.) Import to JSON\n"
        puts " [*] 3.) Export a Case File Report\n"
        puts " [*] 4.) Evidence & Auditing Review\n"
        puts " [-] 5.) Return to the Main Menu\n"
        puts ""

        reporting_prompt = "JEANETTE_REPORTING> "
        seven = Readline.readline(reporting_prompt, true)

        case seven.strip
        when "1"
            puts "Launching nano..."
            open_nano()

        when "2"
            puts ""
        
        when "3"

        when "4"

        when "5"
            puts "Returning to main menu..."
            return_to_menu()
        end # closing the in case statement
    

    when "8"

        puts "[*] 1.) iOS Security Posture Assessment\n"
        puts "[*] 2.) Remote Execution via Android to PC\n"
        puts "[*] 3.) Backup Recovery\n"
        puts "[-] 4.) Return to the Main Menu\n"

    mobile_prompt = "JEANETTE_MOBILE> "
    eight = Readline.readline(mobile_prompt, true)

    case eight.strip
    when "1"

    when "2"
    
    when "3"
    
    when "4"
        return_to_menu()
    end

    when "--exit","e","EXIT"
        puts " Exiting Framework!\n"
        break
     end    
    end
  end
if __FILE__ == $0
    main()
end
