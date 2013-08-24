require 'optparse'

module TodoSamp
	class Command
		module Options
		
			def self.parse!(argv)
				options = {}
				
				#サブコマンドの処理をする際に、未定義のkeyを指定されたら例外を発生させる
				sub_cps = Hash.new do |hash, key|
					raise ArgumentError, "'#{key}' is not todo sub command."
				end
				
				sub_cps['create'] = OptionParser.new do |opt|
					opt.on('-n VAL', '--name=VAL', 'task name') {|v| options[:name] = v}
					opt.on('-c VAL', '--content=VAL', 'task content') {|v| options[:name] = v}
				end
				
				cp = OptionParser.new do |opt|
					opt.on_head('-v','--version', 'show ver') do |v|
						opt.version = TodoSamp::VERSION
						puts opt.ver + "dayo"
						exit
					end
				end
				
				begin
					cp.order!(argv)
					options[:comand] = argv.shift
					sub_cps[options[:comand]].parse!(argv)
				rescue Object =>e
					abort e.message
				end
				options
			end
			
		end
	end
end


