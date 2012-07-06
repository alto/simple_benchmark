# require 'perftools'
require 'ruby-prof'
$alto = 0
$prepare = 0
$step = 0
$publish = 0
GC.disable
# ActiveRecord::Base.silence_auto_explain do
# PerfTools::CpuProfiler.start("log/read_users") do
result = RubyProf.profile do
  # 1000.times { |i| u = User.where(:id => i).first; u.user_name if u }
  70000.times { |i| u = User.find_by_sql("SELECT * FROM users WHERE id = #{i+1} LIMIT 1")[0]; name = u.user_name if u }
  # u = User.where(:id => 8989).first; u.user_name if u
end
printer = RubyProf::GraphHtmlPrinter.new(result)
printer.print(STDOUT, {})
# end
puts "$alto = #{$alto}, $prepare = #{$prepare}, $step = #{$step}, $publish = #{$publish}"