# copyright= 'Huynh Duong Phuong Vi @ 2013-2015'
# suforyou.vn@gmail.com
module S4U
	@s4u_menu=UI.menu("Plugins").add_submenu("Suforyou") if !@s4u_menu
	module S4u_makeface       
		Sketchup::require 'sketchup.rb' 
		Sketchup::require 'langhandler.rb'
		Sketchup::require File.join(NAME,(NAME + "_code"))
		if not file_loaded?(__FILE__)
			toolbar = UI::Toolbar.new("s4u-"+Strings.GetString(TOOL)) 
			names=[[Strings.GetString("Make Face"),"makeface1.png","makeface11.png",Strings.GetString("Select edges for Make Face")]]
			menu=S4U.instance_variable_get :@s4u_menu
			(0..names.length-1).each{|i|
				cmd=UI::Command.new(names[i][0]){ self.main }
				cmd.large_icon = names[i][1] 
				cmd.small_icon = names[i][2] 
				cmd.status_bar_text = names[i][3] 
				cmd.tooltip= names[i][0] 
				cmd.menu_text = names[i][0]
				toolbar=toolbar.add_item cmd 
				menu.add_item cmd
			}
			toolbar.show if toolbar.get_last_state.abs == 1 
		end
	end	
end