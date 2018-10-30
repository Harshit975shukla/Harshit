#!/usr/bin/env ruby

=begin

  created by  Harshit shukla 
       for JECRC UNIVERSITY
=end

###########################
##  BASIC CONFIGURATION  ##
###########################


#
# Default -> false
$pb_log_enabled = false
$pb_log_file = File.dirname(__FILE__) + "/other/log/pentbox_log_" + ENV['USER'] + ".log"


#
# Default -> true
$protected_mode = true

# $text_color variable.
# When true, titles and warnings will be colorful,
# else it will be with default colors.
#
# Default -> true
$text_color = true

###########################

##### Loading time
dir = File.dirname(__FILE__)
require dir + "/lib/pb_proced_lib.rb" # Common procedures and functions.

version = "1.8"
Signal.trap("INT") do
	puts ""
	puts "[*] EXITING ..."
	puts ""
	pb_write_log("exiting", "Core")
	exit
end
#####

pb_write_log("pentbox loaded", "Core")

srand(Time.now.to_i)
banner = rand(4)

puts ""
title " Harshit shukla "

case banner
	when 0
puts"    --`                                                    `         ```            `...`           `-  "
puts"    /y/     .:/+/////:.                        `.------::/oo.    `-/ooo++/-`     .:osssooo/.        /o` "
puts"    /y:   .+/-``    `.:+-      //:-----.`    -+ssyyyyyysyyy+    -+/-``  `.:/-  .+syo/.`  `-//`      /s. "
puts"    +y:  :o.           .o:     :sysssssso+-`/ssssooo++osyys.   .+.         `-:/syo:`        ::      :s. "
puts"    oy- `s-             .o`    `/yys+++++++/+///+++oosyyys-    -/           .oys/`          ./      :s- "
puts"    oy- .o`  `...```.   `s`     `/syyyysss+-/ssyyyyyyyyys-     .+`        `/syo/:`          ::      -s- "
puts"    ss. `o`  `.   ``-`  .+`       -osyyso+-`-syyyyyyyyyo.       /:`     `-oys+` :/-`      .:+`      -s- "
puts"    ss.  -:   .``--..  `/-         `.-...    `-/oosso/-`        `:++/::+sss+-`   .:+/:::/++:`       -s: "
puts"    ss.   -:`  ..-:-  `:-               :+-      ````             `.:///:-`        `.-::-.`         -s: "
puts"    ys.    .-` -/.-- .:.                +ys/`               ..              .`                      .s: "
puts"    ys.     .- -o.:: :.     .:-`       -syys-         `-:` :ss.  ...        :/.                 .:` .s: "
puts"    ys.      .`./-:-.-       `/o/.    -syyyy+`        `oyo-/yy../sso`        .//.    .-`     `.-/-  .s: "
puts"    ss.       ./++/:.         `+ys/`  +yyyyys:     `-:--+ss/so-oso+-```       `:o/. -ss:  `.:+:.    .s: "
puts"    ss.       `/++++/.         -syyo.`oyyyyyy/     .ossso+oosooo++ooss/         .os+/ss/-+oo/.      .s: "
puts"    ss.        .-.`..          `/syyo.+yyyyys.      .-/+ooosyysoooo+/-`      ``  `+yyyyyys:.`       .s: "
puts"    os.         `` --`           -syy/+yyyyys`     -osssooossssoossoo/.   `````...-syyyys:```..```` .s: "
puts"    +y-    ``.``/o:+y+-: ..      `:syssyyyys:      `-:-:+so:so+so/:/++-           `oyyyy/           -s- "
puts"    /y-    ./ssosssossss/o+`    `/oyyyyyys/.          :syo.:ys-oys+.              `syyys.           -s- "
puts"    /y:   ./oss/-.```.:+sy+`    `.-+syyyyso/-``````   -/-` /ys-`/o+-              /yyyyy-           :s. "
puts"    :s/  `:oys.        `:yo/`       .://::/sso+//:.        `::`                  .syyyyy/           :o` "
puts"    .s+ `//sy/          `ss+/:             ::.``                  ``             -syo+yy+`          /o` "
puts"    `so` `:syo`         .sys+.     .:-                 ``    .:----::`           `+y/-ss-           ++  "
puts"    `os. `.:sy+.`     `-oys/`     `syo.            -::...-----..`   -.  ``.`.```  /y/-os`          `o/  "
puts"     /s-   :sosso+///+oyyo:.`      /y+`          ./+/+:.-++.       `-:::-..-:::.  `-sooo`          .s-  "
puts"     -s/   .- :o+sysos/://:`    `:/oys/:`       -++://++``+/    `://-. `-/////::.  `+/++           :o.  "
puts"     `oo`     `` .++```         /yyyyyyy/        `-//:/++`:/  -++/:-``-//+//::-.     `+:           ++`  "
puts"      /s.          ``          `o+oyyys+o.          `-/:+:.../+++//+++/+//:::.       .s:  `..     `s:   "
puts"      -s/     `..-----..`   ``-oo./yyy+`+s+.``         ./-`.::///::////:/:/-         `/.    -:    -s.   "
puts"      `+o` .:+so//:/+/:.`  `/os/.`+yyyo.`-+so:          .:-:/--:/:-.`.--//`                .++`   ++    "
puts"       -s--ossoo++/:.``-:   `/sssosssssssyyo:                    `.://:+-              `.:oss-   .s-    "
puts"       `o+` `.-`     `:+/:    `-/:///++//-.    `.-:/++++/:-`         `..         ``-:+osys+/.    /o`       "
puts"        -s-  .//:::+oss/`o-                   -/ossyyyyyysso/-              `.:/ossysso/-`      .o-     "
puts"         +o`  /:-/osyyo` -o.               `.:oyyyyyyyyyyyyyso/`         `-/osyyyo/-.``--`      /+      "
puts"         .o:  .o-` .+o+-``/+`              :/syyyyyyyyyyyyyyyy+/`       .oss+:-://++/:-.-/.    -o.      "
puts"          :o.  :s/  /-`.-:-+:             -:oyy+osyyyyyyyyyyyys/:      `+yso+//::--..--::++`  `+:       "
puts"           /+` `/o..:  `.`.:/`            :/syyso::+yyyyyyyyyys//       +:..---::////++++o+`  //`       "
puts"           .o:  `//:../oso+/:.            :/sso+:` `/syyo//syy/.:       ./::----------::os-  .o.        "
puts"            .o.  `/::oyyyys+-..`          ./os+.    `+s:`  ./++:-        ./:::::::::/+sso-  `+-         "
puts"             -o.  `../+oo++o+:.            -+/`      `-`   `:---         .-:////++++++/-`  `/-          "
puts"              -+.  `.:/+o+/-`  ``           -/-.`           .:.        ./o+/::----:.`     -+:           "
puts"               -+:` `````  `:/`:o-           `-:-.`      `...`        ./::::::---:o`     -/.            "
puts"                `:/`      .//o/`/o.     `       `.------..``         `-:/:::----/o:     ::`             "
puts"                  -/`     .+o/o+-+o`  `/o`                          -+ooo++++++/:.    `:-               "
puts"                   .:.  `/:.:o///:s/  .so`     ```.--:::////.      `++//::--/``      .:.                "
puts"                    `:-` -++--:/sss+:-/s-     `-  `````````..       -:::://+:       --`                 "
puts"                      .:. `-+/oyy+-oysys-   .::/           `/::`   .:/:::--`      `-.                   "
puts"                       `--` `/yyy/-syyys-  `+:./`          ./`+/                `.-`                    "
puts"                         `-. `/syysyys+-    -/./-          /:-/.               .-`                      "
puts"                           .-. .+sys/`       `-:+.        -o:.               `.`                        "
puts"                             .-``.-.            -+.     `:+-               `.`                          "
puts"                               .-`               -o/.``-++.              `.`                            "
puts"                                `..`              .:o++/-`             ```                              "
puts"                                    ..`              +- `             ```                                "
puts"                                    `..`           `:+` .`         ```                                  " 
puts"                                         `..`     -+/`  `-.     ```                                     " 
puts"                                           `...``//::::::/- ```                                         "
puts"                                              `.-.`      ```                                            "
puts"                                                 `.`  ``         
                                                                                                                   "
           
	when 1
  puts"                   oo$00ooo                        ooo00$oo                        "
  puts"               o$$$$$$$$$'                          '$$$$$$$$$o                    "
  puts"            o$$$$$$$$$                                $$$$$$$$$o                 "
  puts"          o$$$$$$$$$$~             /$   $\              ~$$$$$$$$$$o               " 
  puts"        {$$$$$$$$$$$               $\___/$                $$$$$$$$$$$}             "
  puts"      o$$$$$$$$$$$$8                $$$$$$                8$$$$$$$$$$$$o           "
  puts"     $$$$$$$$$$$$$$$              $$$$$$$$$               $$$$$$$$$$$$$$$          "
  puts"    o$$$$$$$$$$$$$$$              o$$$$$$$o               $$$$$$$$$$$$$$$o         "
  puts"    $$$$$$$$$$$$$$$$$            o{$$$$$$$}o             $$$$$$$$$$$$$$$$$         "
  puts"   ^$$$$$$$$$$$$$$$$$$          J$$$$$$$$$$$L           $$$$$$$$$$$$$$$$$$^        "
  puts"   !$$$$$$$$$$$$$$$$$$$$oo  oo$$$$$$$$$$$$$$$$$oo  oo$$$$$$$$$$$$$$$$$$$$$!        "
  puts"   {$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$}        "
  puts"   6$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$?        "
  puts"   '$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'        "
  puts"    o$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$o         "
  puts"     $$$$$$$$$$$$$$;'~`^Y$$$7^''o$$$$$$$$$$$o''^Y$$$7^`~';$$$$$$$$$$$$$$$          "
  puts"     '$$$$$$$$$$$'       `$'    `'$$$$$$$$$'     `$'       '$$$$$$$$$$$$'          "
  puts"      !$$$$$$$$$7         !       '$$$$$$$'       !         V$$$$$$$$$!            "
  puts"       ^o$$$$$$!                   '$$$$$'                   !$$$$$$o^             "
  puts"         ^$$$$$                    '$$$$$'                    $$$$$^               "
  puts"           'o$$$`                   ^$$$'                   ' $$$o'                 "
  puts"             ~$$$                    $$$                    $$$~                   "
  puts"               '$;                   `$'                   ;$'                     "
	when 2
		
		puts "  _   _      _      ____    ____    _   _   ___   ____   "
		puts " | | | |    / \    |  _ \  / ___|  | | | | |_ _| |_   _| "
		puts " | |_| |   / _ \   | |_) | \___ \  | |_| |  | |    | |   "
		puts " |  _  |  / ___ \  |  _ <   ___) | |  _  |  | |    | |   "
		puts " |_| |_| /_/   \_\ |_| \_\ |____/  |_| |_| |___|   |_|   "




when 3

puts"                    ,.ood888888888888boo.,                        "
puts"               .od888P^""            ""^Y888bo.                     "
puts"           .od8P''   ..oood88888888booo.    ``Y8bo.                 "
puts"        .odP'  .ood8888888888888888888888boo.  `Ybo.               "  
puts"      .d8'   od8'd888888888f`8888't888888888b`8bo   `Yb.             "
puts"     d8'  od8^   8888888888[  `'  ]8888888888   ^8bo  `8b              "
puts"   .8P  d88'     8888888888P      Y8888888888     `88b  Y8.               "
puts"  d8' .d8'       `Y88888888'      `88888888P'       `8b. `8b                "
puts" .8P .88P                                             Y88. Y8.                "
puts" 88  888                                              888  88            "
puts" 88  888                                              888  88             "
puts" 88  888.        ..                        ..        .888  88             "
puts" `8b `88b,     d8888b.od8bo.      .od8bo.d8888b     ,d88' d8'           "
puts"  Y8. `Y88.    8888888888888b    d8888888888888    .88P' .8P             "
puts"   `8b  Y88b.  `88888888888888  88888888888888'  .d88P  d8'                 "
puts"     Y8.  ^Y88bod8888888888888..8888888888888bod88P^  .8P              "
puts"      `Y8.   ^Y888888888888888LS888888888888888P^   .8P'                  "
puts"        `^Yb.,  `^^Y8888888888888888888888P^^'  ,.dP^'              "
puts"           `^Y8b..   ``^^^Y88888888P^^^'    ..d8P^'          "
puts"               `^Y888bo.,            ,.od888P^'              "
puts"                    `^^Y888888888888P^^'                   "     








end

sleep(0.25)
option1 = ""

while option1 != "5"
	module_exec = true
	puts ""
	puts "--------- Menu" + " "*10 + "ruby#{RUBY_VERSION} @ #{RUBY_PLATFORM}"
	puts ""
	puts "1- Cryptography tools"
	puts ""
	puts "2- Network tools"
	puts ""
	puts "3- Web"
	puts ""
        puts "4- Information"
        puts""
	puts "5- Exit"
	puts ""
	print "   -> "
	option1 = gets_pb.chomp
	puts ""

	case option1
		when "1"
			puts "1- Base64 Encoder & Decoder"
			puts "2- Multi-Digest (MD5, SHA1, SHA256, SHA384, SHA512, RIPEMD-160)"
			puts "3- Hash Password Cracker (MD5, SHA1, SHA256, SHA384, SHA512, RIPEMD-160)"
			puts "4- Secure Password Generator"
			puts ""
			puts "0- Back"
			puts ""
			print "   -> "
			option2 = gets_pb.chomp
			case option2
				when "0"
					module_exec = false
				when "1"
					require "#{dir}/tools/cryptography/base64.rb"
					Cryptogr_pb::Base64_pb.new()
				when "2"
					require "#{dir}/tools/cryptography/digest.rb"
					Cryptogr_pb::Digest_pb.new()
				when "3"
					require "#{dir}/tools/cryptography/hash_cracker.rb"
					Cryptogr_pb::Hash_cracker_pb.new()
				when "4"
					require "#{dir}/tools/cryptography/sec_password.rb"
					Cryptogr_pb::Sec_password_pb.new()
				else
					module_exec = false
					puts ""
					puts "Invalid option."
					puts ""
			end
		when "2"
			puts "1- TCP port scanner"
			puts "2- Honeypot"
			puts "3- Fuzzer"
			puts ""
			puts "0- Back"
			puts ""
			print "   -> "
			option2 = gets_pb.chomp
			case option2
				when "0"
					module_exec = false
				
				when "1"
					require "#{dir}/tools/network/port_scanner.rb"
					Network_pb::Port_scanner_pb.new()
				when "2"
					require "#{dir}/tools/network/honeypot.rb"
					Network_pb::Honeypot_pb.new()
				when "3"
					require "#{dir}/tools/network/fuzzer.rb"
					Network_pb::Fuzzer_pb.new()
				
				else
					module_exec = false
					puts ""
					puts "Invalid option."
					puts ""
			end
		when "3"
			puts "1- HTTP directory bruteforce"
			puts "2- HTTP common files bruteforce"
			puts ""
			puts "0- Back"
			puts ""
			print "   -> "
			option2 = gets_pb.chomp
			case option2
				when "0"
					module_exec = false
				when "1"
					require "#{dir}/tools/web/http_brute_dir.rb"
					Web_pb::HTTP_brute_dir_pb.new()
				when "2"
					require "#{dir}/tools/web/http_brute_files.rb"
					Web_pb::HTTP_brute_files_pb.new()
				else
					module_exec = false
					puts ""
					puts "Invalid option."
					puts ""
			end
		when "4"
module_exec = false
puts "
    X------------------------------------X
    | Harshit Shukla                     |
    | JECRC UNIvERSITY                   |
    | 15BCON026                          |
    |                                    |
    X------------------------------------X

    

"
		when "5"
			
			puts "Harshit Shukla"
			puts "Shuklaharshit975@gmail.com"
			puts "7791841386"
                        puts " THANK YOU"
                puts "  _   _   _______   _____   ____    _   _   ___   ____   "
		puts " | | | | |  ___  | |  _  | / ___|  | | | | |_ _| |_   _| "
		puts " | |_| | | |   | | | |_) | |___    | |_| |  | |    | |   "
		puts " |  _  | | |___| | |  _ <   ___) | |  _  |  | |    | |   "
		puts " |_| |_| | |   | | |_| |_| |____/  |_| |_| |___|   |_|   "

	end
	if module_exec == true
		puts ""
		puts "[*] Module execution finished."
		puts ""
	end
end
