# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
	def disciplines_select(field, s)
		ws = []
		Discipline.find(:all, :conditions => "group_id = #{s}").each{|i| ws << [i.name, i.id]}
		select_tag(field, options_for_select(ws))
	end

end
