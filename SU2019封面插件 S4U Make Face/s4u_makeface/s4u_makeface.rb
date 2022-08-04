# copyright: 'Huynh Duong Phuong Vi @ 2013-2015'
# suforyou.vn@gmail.com
module S4U
	module S4u_makeface
		require 'sketchup.rb'
		require 'extensions.rb'
		require 'langhandler.rb'
		NAME="s4u_makeface"
		TOOL="Make face"
		Strings = LanguageHandler.new( NAME + ".strings")
		ext = SketchupExtension.new(("s4u-" + Strings.GetString(TOOL)),File.join(NAME,(NAME + "_menu.rb")))
		ext.copyright= 'Huynh Duong Phuong Vi @ 2013-2015'
		ext.creator = 'Huynh Duong Phuong Vi '
		ext.version = '3.0.0'
		ext.description = Strings.GetString("Make faces(paypal:suforyou.vn@gmail.com)")
		Sketchup.register_extension ext, true
	end
end