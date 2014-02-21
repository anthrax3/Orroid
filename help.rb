#encoding : utf-8
def help

	puts "\n"
	puts "  +==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+"
	puts " |                                                                            |"
	puts " +   ____    _____    _____     ____    _____   ____         ■        ■     +"
	puts " |  / __ \\  |  _  \\  |  _  \\   / __ \\  |_   _| |  __ \\         ■____■       |"
	puts " + | /  \\ | | |_| |  | |_| |  | /  \\ |   | |   | |  \\ \\      ■■■■■■     +"
	puts " | | |  | | |  _  /  |  _  /  | |  | |   | |   | |  | |   ■■■■■■■■■  |"
	puts " + | \\__/ | | | \\ \\  | | \\ \\  | \\__/ |  _| |_  | |__/ /  ■■○■■■■○■■ +"
	puts " |  \\____/  |_|  \\_\\ |_|  \\_\\  \\____/  |_____| |_____/   -------------------- |"
	puts " +                                                                            +"
	puts " |                                                                            |"
	puts "  +==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+==+"
	 
  
	puts "\n"
	puts "\t-d, --dex\t\tApply an \"Invalid offset\" technique"
	puts "\t\t\t\t* Usage: orroid [option] [APK file]"
	puts "\t			** Output: Fixed APK file (You should SIGN it)"
	puts "\n"
	puts "\t-z, --zipformat		Apply an \"zip format\" techinique"
	puts "\t			* Usage: orroid [option] [APK file]"
	puts "\t			** Output: Encrypted APK file"
	puts "\n"
	puts "\t-s			Check codes and Report vunlerabilites"
	puts "\t			* Usage: orroid [option] [Project folder]"
	puts "\t			** Output: Report"
	puts "\t			[\s\s-K	Report in Korean (Default)\s]"
	puts "\t			[\s\s-E	Report in English\t\s\s\s]"
	puts "\n"
end